#ifndef __FIR_H__
#define __FIR_H__

#include <defs.h>

#define N 11

// User Project 
#define AP (*(volatile uint32_t*) 0x30000000)
#define data_len (*(volatile uint32_t*) 0x30000010)

// User Project FIR Tap parameters
#define tap0 (*(volatile uint32_t*) 0x30000040)
#define tap1 (*(volatile uint32_t*) 0x30000044)
#define tap2 (*(volatile uint32_t*) 0x30000048)
#define tap3 (*(volatile uint32_t*) 0x3000004c)
#define tap4 (*(volatile uint32_t*) 0x30000050)
#define tap5 (*(volatile uint32_t*) 0x30000054)
#define tap6 (*(volatile uint32_t*) 0x30000058)
#define tap7 (*(volatile uint32_t*) 0x3000005c)
#define tap8 (*(volatile uint32_t*) 0x30000060)
#define tap9 (*(volatile uint32_t*) 0x30000064)
#define tapA (*(volatile uint32_t*) 0x30000068)

#define Xn (*(volatile uint32_t*) 0x30000080)
#define Yn (*(volatile uint32_t*) 0x30000084)

int taps[N] = {0,-10,-9,23,56,63,56,23,-9,-10,0};
// int inputbuffer[N];
//int inputsignal[N] = {1,2,3,4,5,6,7,8,9,10,11};
int outputsignal[64];
#endif
