#include <windows.h>
#include "sysinfo.h"

//https://github.com/mainigautam/raw_mirage/blob/d65a3baf4e7e4c6d9134272e88b05664022b91b4/external/fio/os/windows/posix.c

long long getGlobalMemoryStatus()
{
    MEMORYSTATUS status;
	GlobalMemoryStatus(&status);
	return status.dwTotalPhys;
}

//https://github.com/opatomic/opacli-c/blob/fa912dbfa6c5fa779958b9680ee67061c7071acf/build/parallel.c
int get_nprocs() 
{
	SYSTEM_INFO si;
	GetSystemInfo(&si);
	return si.dwNumberOfProcessors;
}

