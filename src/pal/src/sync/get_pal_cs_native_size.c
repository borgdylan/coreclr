//progam to get the size of PAL_CRITICAL_SECTION_NATIVE_DATA
// on the current cpu/os combination

#include <pthread.h>
#include <stdio.h>

//copied from coreclr/src/pal/src/sync/cs.cpp
//make sure to get the latest definition of the struct
typedef struct _PAL_CRITICAL_SECTION_NATIVE_DATA 
{
    pthread_mutex_t mutex;
    pthread_cond_t condition;
    int iPredicate;
} PAL_CRITICAL_SECTION_NATIVE_DATA;

int main() {
    printf("%i\n", sizeof(PAL_CRITICAL_SECTION_NATIVE_DATA));
    return 0;
}
