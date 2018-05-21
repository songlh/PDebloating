#include <errno.h>
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

	sprintf(LogFileNameCStr, "./CPI");
	//sprintf(LogFileNameCStr, "./CPI-%04d%02d%02d-%02d%02d%02d", LT->tm_year + 1900, LT->tm_mon + 1, LT->tm_mday, LT->tm_hour, LT->tm_min, LT->tm_sec);

	printf("%s\n", LogFileNameCStr);

	fp = fopen(LogFileNameCStr, "w");

	if(fp == NULL)
	{
		fprintf(stderr, "Open failed: %s\r\n", strerror(errno));
		exit(-1);
	}

}

extern "C" void hookRead(void * addr, int length, int instID)
{
	printf("%d read %p %d\n", instID, addr, length);
	fprintf(fp, "%d read %p %d\n", instID, addr, length);
}

extern "C" void hookWrite(void * addr, int length, int instID)
{
	printf("%d write %p %d\n", instID, addr, length);
	fprintf(fp, "%d write %p %d\n", instID, addr, length);
}

extern "C" void finalizeHooks()
{
	fclose(fp);
}
