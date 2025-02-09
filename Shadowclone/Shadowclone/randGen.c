/*
Shadowclone: Blocking DOP Attacks with Compiletime Stack Layout Randomization

Authors: Yunjie Pan, [Shibo Chen](https://shibo.tech), Cheng Chi, Yifan Guan

University of Michigan - Ann Arbor
*/

#include <stdint.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h> 
#include <stdio.h>
#include <string.h>
#include <time.h> 
#include <stdlib.h>
#include "randGen.h"
#include "config.h"
int32_t get_rand(){
    srand(time(0));
    int rand_num = rand();
    return rand_num & 0b1111;
}

int32_t rdrand32_step (uint32_t *rand)
{
    unsigned char ok;
    asm volatile ("rdrand %0; setc %1"
        : "=r" (*rand), "=qm" (ok));
    return (int) ok;
}


int32_t get_urand(){
    int32_t rand_num = 0;
    while(!rdrand32_step((uint32_t*)&rand_num) );
   
    return rand_num & 0b1111;
}

void detect_breach(){
    printf("Breach detected!\n");
    exit(1);
}