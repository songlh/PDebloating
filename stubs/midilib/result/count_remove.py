import sys

if __name__ == '__main__':
	sFile = sys.argv[1]

	f = open(sFile)
	numDelete = 0
	while True:
		line = f.readline()
		if not line:
			break

		if line.find('//delete') != -1:
			numDelete += 1


	f.close()

	print numDelete