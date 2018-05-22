#ifndef SONGLH_STRWINSTRUMENTOR_H
#define SONGLH_STRWINSTRUMENTOR_H

#include <set>

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Pass.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/GlobalVariable.h"


using namespace llvm;
using namespace std;

struct StRWInstrumentor: public ModulePass {
	static char ID;

	StRWInstrumentor();

	virtual void getAnalysisUsage(AnalysisUsage &AU) const;

	virtual bool runOnModule(Module &M);

	void instrumentStRW();

	void instrumentMain();

	void instrumentStLoad(LoadInst * pLoad);

	void instrumentStStore(StoreInst * pStore);

	void instrumentMemcpy(CallInst * pCall);

	void SetupTypes();

	void SetupConstants();

	void SetupHooks();



public:
	IntegerType * IntType;
	IntegerType * LongType;
	Type 		* VoidType;
	PointerType * VoidPointerType;

	Function * hookRead;
	Function * hookWrite;
	Function * initHooks;
	Function * finalizeHooks;


	Module * pModule;
	Loop * pLoop;

	set<Instruction *> setInstrumentedInst;

};




#endif
