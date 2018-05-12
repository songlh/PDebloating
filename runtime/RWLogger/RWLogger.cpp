#include <errno.h>
#include <fcntl.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

FILE * fp;


extern "C" void initHooks()
{
	time_t T = time(NULL);
	struct tm *LT = localtime(&T);
	char LogFileNameCStr[1024];

	sprintf(LogFileNameCStr, "/home/songlh/workspace/github/PDebloating/tmp/CPI-%04d%02d%02d-%02d%02d%02d", LT->tm_year + 1900, LT->tm_mon + 1, LT->tm_mday, LT->tm_hour, LT->tm_min, LT->tm_sec);
	
	printf("%s\n", LogFileNameCStr);

	fp = fopen(LogFileNameCStr, "w+");

	if(fp == NULL)
	{	
		fprintf(stderr, "Open failed: %s\n", strerror(errno));
		exit(-1);
	}

}

extern "C" void hookRead(void * addr, int length, int instID)
{
	fprintf(fp, "%d read %p %d\n", instID, addr, length);
}

extern "C" void hookWrite(void * addr, int length, int instID)
{
	fprintf(fp, "%d write %p %d\n", instID, addr, length);
}

extern "C" void finalizeHooks()
{
	fclose(fp);
}