#ifndef _H_SONGLH_SEARCH
#define _H_SONGLH_SEARCH

#include <string>

#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Analysis/LoopInfo.h"

using namespace llvm;
using namespace std;

Function * searchFunctionByName(Module & pModule, string & strFuncName);

void searchBBsByLineNo(Function * F, unsigned int numLine, vector<BasicBlock* > & vecBBs);

Loop * searchLoopByLineNo(Function * pFunc, LoopInfo * pLI, unsigned int numLine);

#endif