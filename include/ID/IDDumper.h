#ifndef _H_SONGLH_IDDUMPER
#define _H_SONGLH_IDDUMPER

#include "llvm/Pass.h"

using namespace llvm;
using namespace std;

struct IDDumper: public ModulePass
{
	static char ID;
	IDDumper();

	virtual void getAnalysisUsage(AnalysisUsage &AU) const;
	virtual bool runOnModule(Module &M);

};


#endif