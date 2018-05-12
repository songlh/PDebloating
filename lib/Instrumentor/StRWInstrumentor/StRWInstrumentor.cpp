
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"

#include "Commons/Search/Search.h"
#include "Instrumentor/StRWInstrumentor/StRWInstrumentor.h"


using namespace llvm;
using namespace std;

static RegisterPass<StRWInstrumentor> X(
        "instrument-struct-RW",
        "profiling struct RW",
        false, false);


static cl::opt<unsigned> uLoopSrcLine("noLoopLine", 
					cl::desc("Source Code Line Number for the Loop"), cl::Optional, 
					cl::value_desc("uLoopCodeLine"));

static cl::opt<std::string> strFuncName("strFunc", 
					cl::desc("Function Name"), cl::Optional, 
					cl::value_desc("strFuncName"));



Value * getBaseAddress(Instruction * pInst)
{
	if(LoadInst * pLoad = dyn_cast<LoadInst>(pInst))
	{
		Value * pAddr = pLoad->getPointerOperand();

		while(true)
		{
			if(GetElementPtrInst * pGet = dyn_cast<GetElementPtrInst>(pAddr))
			{
				pAddr = pGet->getPointerOperand();
			}
			else if(CastInst * pCast = dyn_cast<CastInst>(pAddr))
			{
				pAddr = pCast->getOperand(0);
			}
			else
			{
				break;
			}
		}

		return pAddr;

	}
	else if(StoreInst * pStore = dyn_cast<StoreInst>(pInst))
	{
		Value * pAddr = pStore->getPointerOperand();

		while(true)
		{
			if(GetElementPtrInst * pGet = dyn_cast<GetElementPtrInst>(pAddr))
			{
				pAddr = pGet->getPointerOperand();
			}
			else if(CastInst * pCast = dyn_cast<CastInst>(pAddr))
			{
				pAddr = pCast->getOperand(0);
			}
			else
			{
				break;
			}
		}

		return pAddr;
	}
	else
	{
		return NULL;
	}

	
}

int getInstructionID(Instruction *II) 
{
	MDNode * Node = II->getMetadata("ins_id");

	if (!Node) 
	{
		return -1;
    }

	assert(Node->getNumOperands() == 1);
	const Metadata *MD = Node->getOperand(0);
	if (auto *MDV = dyn_cast<ValueAsMetadata>(MD)) 
	{
		Value *V = MDV->getValue();
		ConstantInt *CI = dyn_cast<ConstantInt>(V);
		assert(CI);
		return CI->getZExtValue();
	}

	return -1; 
}




char StRWInstrumentor::ID = 0;

void StRWInstrumentor::getAnalysisUsage(AnalysisUsage &AU) const {
	AU.setPreservesCFG();
    AU.addRequired<LoopInfoWrapperPass>();
}

StRWInstrumentor::StRWInstrumentor() : ModulePass(ID) 
{
	PassRegistry &Registry = *PassRegistry::getPassRegistry();
    initializeLoopInfoWrapperPassPass(Registry);
}


void StRWInstrumentor::SetupTypes()
{
	this->VoidType = Type::getVoidTy(pModule->getContext());
	this->IntType = IntegerType::get(pModule->getContext(), 32);
	this->LongType = IntegerType::get(pModule->getContext(), 64);
	this->VoidPointerType = PointerType::get(IntegerType::get(pModule->getContext(), 8), 0);
}

void StRWInstrumentor::SetupHooks()
{
	vector<Type *> ArgTypes;

	this->initHooks = this->pModule->getFunction("initHooks");

	if(!this->initHooks)
	{	
		ArgTypes.clear();
		FunctionType * pFType = FunctionType::get(this->VoidType, ArgTypes, false);
		this->initHooks = Function::Create(pFType, GlobalValue::ExternalLinkage, "initHooks", this->pModule);
	}

	this->finalizeHooks = this->pModule->getFunction("finalizeHooks");
	if(!this->finalizeHooks)
	{
		ArgTypes.clear();
		FunctionType * pFType = FunctionType::get(this->VoidType, ArgTypes, false);
		this->finalizeHooks = Function::Create(pFType, GlobalValue::ExternalLinkage, "finalizeHooks", this->pModule);
	}

	this->hookWrite = this->pModule->getFunction("hookWrite");
	if(!this->hookWrite)
	{
		ArgTypes.clear();
		ArgTypes.push_back(this->VoidPointerType);
		ArgTypes.push_back(this->IntType);
		ArgTypes.push_back(this->IntType);
		FunctionType * pFType = FunctionType::get(this->VoidType, ArgTypes, false);
		this->hookWrite = Function::Create(pFType, GlobalValue::ExternalLinkage, "hookWrite", this->pModule);
	}

	this->hookRead = this->pModule->getFunction("hookRead");
	if(!this->hookRead)
	{
		ArgTypes.clear();
		ArgTypes.push_back(this->VoidPointerType);
		ArgTypes.push_back(this->IntType);
		ArgTypes.push_back(this->IntType);
		FunctionType * pFType = FunctionType::get(this->VoidType, ArgTypes, false);
		this->hookRead = Function::Create(pFType, GlobalValue::ExternalLinkage, "hookRead", this->pModule);
	}
}

void StRWInstrumentor::instrumentStLoad(LoadInst * pLoad)
{
	Value * pValue = getBaseAddress(pLoad);
	DataLayout * dl = new DataLayout(this->pModule);
	Instruction * pInstEnd = pLoad->getParent()->getTerminator();			

	if(PointerType * pPType = dyn_cast<PointerType>(pValue->getType()))
	{
		if(StructType * pStType = dyn_cast<StructType>(pPType->getElementType()))
		{
			if(pStType->getName() == "struct.MIDI_MSG")
			{
				//pLoad->getParent()->dump();
				//pLoad->dump();

				Value * pValue = pLoad->getPointerOperand();
				Type * pType = pValue->getType()->getContainedType(0);

				if(pType->isSized())
				{
					ConstantInt * pConstantSize = ConstantInt::get(this->pModule->getContext(), APInt(32, StringRef(std::to_string(dl->getTypeAllocSize(pType))), 10));
					CastInst * pCast = new BitCastInst(pValue, this->VoidPointerType, "", pInstEnd);

					int instID = getInstructionID(pLoad);
					ConstantInt * pConstantID = ConstantInt::get(this->pModule->getContext(), APInt(32, StringRef(to_string(instID)), 10));

					vector<Value *> vecParams;

					vecParams.push_back(pCast);
					vecParams.push_back(pConstantSize);
					vecParams.push_back(pConstantID);

					CallInst * pCall = CallInst::Create(this->hookRead, vecParams, "", pInstEnd);
					pCall->setCallingConv(CallingConv::C);
					pCall->setTailCall(false);
					AttributeList arrList;
					pCall->setAttributes(arrList);

				}
				else
				{
					pLoad->dump();
					assert(0);
				}



			}
		}
	}
}

void StRWInstrumentor::instrumentStStore(StoreInst * pStore)
{
	Value * pValue = getBaseAddress(pStore);
	DataLayout * dl = new DataLayout(this->pModule);
	Instruction * pInstEnd = pStore->getParent()->getTerminator();			

	if(PointerType * pPType = dyn_cast<PointerType>(pValue->getType()))
	{
		if(StructType * pStType = dyn_cast<StructType>(pPType->getElementType()))
		{
			if(pStType->getName() == "struct.MIDI_MSG")
			{
				Value * pValue = pStore->getPointerOperand();
				Type * pType = pValue->getType()->getContainedType(0);

				if(pType->isSized())
				{
					ConstantInt * pConstantSize = ConstantInt::get(this->pModule->getContext(), APInt(32, StringRef(std::to_string(dl->getTypeAllocSize(pType))), 10));
					CastInst * pCast = new BitCastInst(pValue, this->VoidPointerType, "", pInstEnd);

					int instID = getInstructionID(pStore);
					ConstantInt * pConstantID = ConstantInt::get(this->pModule->getContext(), APInt(32, StringRef(to_string(instID)), 10));

					vector<Value *> vecParams;

					vecParams.push_back(pCast);
					vecParams.push_back(pConstantSize);
					vecParams.push_back(pConstantID);

					CallInst * pCall = CallInst::Create(this->hookWrite, vecParams, "", pInstEnd);
					pCall->setCallingConv(CallingConv::C);
					pCall->setTailCall(false);
					AttributeList arrList;
					pCall->setAttributes(arrList);

				}
				else
				{
					pStore->dump();
					assert(0);
				}
			}
		}
	}
}



void StRWInstrumentor::instrumentStRW()
{
	vector<Function *> vecWorkList;

	for(Loop::block_iterator BB = pLoop->block_begin(); BB != pLoop->block_end(); BB ++ )
	{
		for(BasicBlock::iterator II = (*BB)->begin(); II != (*BB)->end(); II ++)
		{
			if(LoadInst * pLoad = dyn_cast<LoadInst>(II))
			{
				instrumentStLoad(pLoad);
				
			}
			else if(StoreInst * pStore = dyn_cast<StoreInst>(II))
			{
				instrumentStStore(pStore);
			}
			else if(CallInst * pCall = dyn_cast<CallInst>(II))
			{
				if(pCall->getCalledFunction() != NULL)
				{
					vecWorkList.push_back(pCall->getCalledFunction());
				}

			}
			else if(isa<IntrinsicInst>(II))
			{
				II->dump();
				assert(0);
			}
		}
	}


	//return;

	set<Function *> setProcessedFunc;

	while(vecWorkList.size() > 0)
	{
		Function * pF = vecWorkList.back();
		vecWorkList.pop_back();

		if(setProcessedFunc.find(pF) != setProcessedFunc.end() )
		{
			continue;
		}

		setProcessedFunc.insert(pF);

		for(Function::iterator BB = pF->begin(); BB != pF->end(); BB ++ )
		{
			for(BasicBlock::iterator II = BB->begin(); II != BB->end(); II ++ )
			{
				if(LoadInst * pLoad = dyn_cast<LoadInst>(II))
				{
					instrumentStLoad(pLoad);
				
				}
				else if(StoreInst * pStore = dyn_cast<StoreInst>(II))
				{
					instrumentStStore(pStore);
				}
				else if(CallInst * pCall = dyn_cast<CallInst>(II))
				{
					if(pCall->getCalledFunction() != NULL)
					{
						vecWorkList.push_back(pCall->getCalledFunction());
					}
				}
				else if(isa<IntrinsicInst>(II))
				{
					II->dump();
					assert(0);
				}
			}
		}


	}

	
}

void StRWInstrumentor::instrumentMain()
{
	Function * pMain = pModule->getFunction("main");
	BasicBlock * pEntry = &pMain->getEntryBlock();

	CallInst * pCallInit = CallInst::Create(this->initHooks, "", pEntry->getTerminator());
	pCallInit->setCallingConv(CallingConv::C);
	pCallInit->setTailCall(false);

	AttributeList attrList;
	pCallInit->setAttributes(attrList);

    vector<BasicBlock *> vecExitBBs;

    for(Function::iterator BB = pMain->begin(); BB != pMain->end(); BB ++ )
    {
    	for(BasicBlock::iterator II = BB->begin(); II != BB->end(); II ++ )
    	{
    		if(isa<ReturnInst>(&*II))
    		{
    			BasicBlock * pBB = &*BB;
    			vecExitBBs.push_back(pBB);
    			break;
    		}
    	}
    }

    assert(vecExitBBs.size() == 1);

    CallInst * pCallFinal = CallInst::Create(this->finalizeHooks, "", vecExitBBs[0]->getTerminator());
	pCallFinal->setCallingConv(CallingConv::C);
	pCallFinal->setTailCall(false);

	pCallFinal->setAttributes(attrList);

}


bool StRWInstrumentor::runOnModule(Module & M)
{
	this->pModule = &M;

	SetupTypes();
	SetupHooks();

	Function * pMain = M.getFunction("main");

	//Function * pFunction = searchFunctionByName(M, strFuncName);
	Function * pFunction = M.getFunction(strFuncName);

	if(pFunction == NULL)
	{
		errs() << "Cannot find the input function!\n" ;
		return false;
	}

	LoopInfo * pLI = &getAnalysis<LoopInfoWrapperPass>(*pFunction).getLoopInfo();

	Loop * pLoop = searchLoopByLineNo(pFunction, pLI, uLoopSrcLine);


	if(pLoop == NULL)
	{
		errs() << "Cannot find the input loop!\n";
		return false;
	}

	this->pLoop = pLoop;

	instrumentMain();

	instrumentStRW();

	return true;
}