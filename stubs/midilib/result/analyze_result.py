

import sys
from sets import Set

def parseIDInfo(sIDInfo):
	f = open(sIDInfo)

	IDDict = {}

	while True:
		line = f.readline()
		if not line:
			break

		if not line.startswith('//-- '):
			numID = int(line.split()[0])
			strFunName = line.split()[1].strip()
		else:
			line = line[5:-1]
			strFileName = line.split(':')[0]
			numLine = int(line.split(':')[1])

			IDDict[numID] = [strFunName, strFileName, numLine]


	f.close()

	return IDDict

def parseTrace(sTrace, IDDict):
	f = open(sTrace)

	setUpperMem = Set([])
	setLowerMem = Set([])

	while True:
		line = f.readline()

		if not line:
			break;

		items = line[:-1].split()
		numID = int(items[0])
		
		if IDDict[numID][0] == 'ConvertMIDI':
			setUpperMem.add(items[2])

		elif items[1] == 'write' and  IDDict[numID][0] == 'midiReadGetNextMessage':
			setLowerMem.add(items[2])

	f.close()

	print setUpperMem
	print setLowerMem


	for item in setLowerMem:
		if item not in setUpperMem:
			print item


def parseTrace2(sTrace):
	f = open(sTrace)

	recordList = []

	while True:
		line = f.readline()

		if not line:
			break

		items = line[:-1].split()
		recordList.append(items)

	f.close()

	return recordList

if __name__ == '__main__':
	sTrace = sys.argv[1]
	sIDInfo = sys.argv[2]

	IDDict = parseIDInfo(sIDInfo)
	recordList = parseTrace2(sTrace)

	numDead = 0
	numAppRead = 0
	numInternal = 0

	AppReadDict = {}

	DeadWrite = {}

	InternalDict = {}

	for i in range(len(recordList)-1):

		if recordList[i][1] == 'read':
			continue

		addr = recordList[i][2]
		hasRead = False
		hasAppRead = False

		for j in range(i+1, len(recordList)):
			if recordList[j][2] == addr:
				if recordList[j][1] == 'write':
					break
				else:
					hasRead = True
					if IDDict[int(recordList[j][0])][0] == 'ConvertMIDI':
						hasAppRead = True

						if recordList[j][0] not in AppReadDict:
							AppReadDict[recordList[j][0]] = 0

						AppReadDict[recordList[j][0]] += 1

		if not hasRead:
			numDead += 1

			if recordList[i][0] not in DeadWrite:
				DeadWrite[recordList[i][0]] = 0

			DeadWrite[recordList[i][0]] += 1

		if hasAppRead:
			numAppRead += 1

		if hasRead and not hasAppRead:
			numInternal += 1

			if recordList[i][0] not in InternalDict:
				InternalDict[recordList[i][0]] = 0

			InternalDict[recordList[i][0]] += 1


	print "Upper write:", numAppRead
	print "Dead write", numDead
	print "other write", 2833 - numAppRead - numDead

	print len(DeadWrite)

	#for key in InternalDict:
	#	print key, InternalDict[key], IDDict[int(key)][0], IDDict[int(key)][2]

	for key in DeadWrite:
		print key, DeadWrite[key], IDDict[int(key)][0], IDDict[int(key)][2]

	#print len(AppReadDict)

	#for key in AppReadDict:
	#	print key, AppReadDict[key]


