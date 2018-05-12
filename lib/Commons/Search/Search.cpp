
#include <vector>
#include <set>


#include "llvm/IR/DebugInfo.h"
#include "llvm/Pass.h"
#include "llvm/PassAnalysisSupport.h"

#include "Commons/Search/Search.h"

using namespace std;

Function * searchFunctionByName(Module & pModule, string & strFuncName)
{

	for(Module::iterator f = pModule.begin(); f != pModule.end(); f ++ )
	{
		Function * pF = &*f;

		if(pF->getName() == strFuncName)
		{
			return pF;

		}
	}

	return NULL;
}

void searchBBsByLineNo(Function * F, unsigned int numLine, vector<BasicBlock* > & vecBBs)
{
	for(Function::iterator BB = F->begin(); BB != F->end(); ++ BB)
	{
		for(BasicBlock::iterator II = BB->begin(); II != BB->end(); ++II )
		{
			Instruction * I = &*II;

			if(MDNode * N = I->getMetadata("dbg"))
			{
				const DILocation *Loc = I->getDebugLoc();
				unsigned int uLineNoForInst = Loc->getLine();

				if(uLineNoForInst == numLine)
				{
					BasicBlock * pB = &*BB;
					vecBBs.push_back(pB);

					break;
				}
			}
		}
	}
}

Loop * searchLoopByLineNo(Function * pFunc, LoopInfo * pLI, unsigned int numLine)
{
	vector<BasicBlock *> vecBBs;
	searchBBsByLineNo(pFunc, numLine, vecBBs);

	unsigned int uDepth = 0;
	BasicBlock * pBB = NULL;

	for(vector<BasicBlock *>::iterator itBegin = vecBBs.begin(); itBegin != vecBBs.end(); itBegin++)
	{
		if(pLI->getLoopDepth(*itBegin) > uDepth)
		{
			uDepth = pLI->getLoopDepth(*itBegin);
			pBB = *itBegin;
		}
	}

	if(pBB == NULL)
	{
		set<Loop *> setLoop;

		for(Function::iterator BI = pFunc->begin(); BI != pFunc->end(); BI ++ )
		{
			BasicBlock * BB = &*BI;

			if(pLI->getLoopDepth(BB) > 0)
			{
				setLoop.insert(pLI->getLoopFor(BB));
			}
		}

		if(setLoop.size() == 1)
		{
			return *(setLoop.begin());
		}

		return NULL;
	}


	return pLI->getLoopFor(pBB);
}