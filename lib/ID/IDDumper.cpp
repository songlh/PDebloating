#include "llvm/Analysis/LoopInfo.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DebugInfo.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/MDBuilder.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"

#include "ID/IDDumper.h"

using namespace llvm;

static RegisterPass<IDDumper> X("dump-id",
								"dump assigned ID for each instruction",
								true,
								false);

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


char IDDumper::ID = 0;

IDDumper::IDDumper() : ModulePass(ID) 
{
	PassRegistry &Registry = *PassRegistry::getPassRegistry();
	initializeLoopInfoWrapperPassPass(Registry);
}

void IDDumper::getAnalysisUsage(AnalysisUsage &AU) const 
{
	AU.setPreservesCFG();
}


bool IDDumper::runOnModule(Module &M) 
{

	for(Module::iterator FF = M.begin(); FF != M.end(); FF ++)
	{
		Function * pFunction = &*FF;

		for(Function::iterator BB = FF->begin(); BB != FF->end(); BB ++)
		{
			BasicBlock * pBB = &*BB;

			for(BasicBlock::iterator II = BB->begin(); II != BB->end(); II ++)
			{
				Instruction * I = &*II;
				if(MDNode * N = I->getMetadata("dbg"))
				{
					const DILocation *Loc = I->getDebugLoc();
					errs() << getInstructionID(I) << " " << pFunction->getName() << "\n";
					errs() << "//-- " << Loc->getFilename() << ":" << Loc->getLine() << "\n";
					//unsigned int uLineNoForInst = Loc->getLine();

				
				}
			}
		}
	}

	return false;
}