#ifndef SONGLH_DEBLOATER_H
#define SONGLH_DEBLOATER_H

#include <set>
#include <map>
#include <vector>

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Pass.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/GlobalVariable.h"

#include "Commons/ControlDep/ControlDep.h"


using namespace llvm;
using namespace std;

struct Debloater: public ModulePass {
	static char ID;

	Debloater();

	virtual void getAnalysisUsage(AnalysisUsage &AU) const;

	virtual bool runOnModule(Module &M);

	bool isTargetInstruction(Instruction * pInst);

	//void removeByControlDep(map<int64_t, vector<LoadInst *> > & mapOffsetRead, map<int64_t, vector<StoreInst *> > mapOffsetWrite);

	void removeUnnecessaryWrite(map<int64_t, vector<LoadInst *> > & mapOffsetRead, map<int64_t, vector<StoreInst *> > mapOffsetWrite);

	void removeInstruction(Instruction * pInst);

	//void removeConditionalDef(Function * pFunction, );

	//void collectLoopDependence(Function * pFunction, map<LoadInst *, int64_t> & mapReadOffset);

public:
	DataLayout * dl;

	Module * pModule;

	//ControlDependenceGraphBase * pCDG;

	unsigned numTotalRemove = 0;
};




#endif