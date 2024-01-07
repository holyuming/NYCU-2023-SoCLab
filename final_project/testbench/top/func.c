#include <defs.h>
#include <user_uart.h>
#include <irq_vex.h>

// uart
void __attribute__ ( ( section ( ".mprj" ) ) ) uart_write(int n)
{
    while(((reg_uart_stat>>3) & 1));
    reg_tx_data = n;
}

void __attribute__ ( ( section ( ".mprj" ) ) ) uart_write_char(char c)
{
	if (c == '\n')
		uart_write_char('\r');

    // wait until tx_full = 0
    while(((reg_uart_stat>>3) & 1));
    reg_tx_data = c;
}

void __attribute__ ( ( section ( ".mprj" ) ) ) uart_write_string(const char *s)
{
    while (*s)
        uart_write_char(*(s++));
}


char __attribute__ ( ( section ( ".mprj" ) ) ) uart_read_char()
{
	char num;
    if((((reg_uart_stat>>5) | 0) == 0) && (((reg_uart_stat>>4) | 0) == 0)){
        for(int i = 0; i < 1; i++)
            asm volatile ("nop");

        num = reg_rx_data;
    }

    return num;
}

int __attribute__ ( ( section ( ".mprj" ) ) ) uart_read()
{
    int num;
    if((((reg_uart_stat>>5) | 0) == 0) && (((reg_uart_stat>>4) | 0) == 0)){
        for(int i = 0; i < 1; i++)
            asm volatile ("nop");

        num = reg_rx_data;
    }

    return num;
}


// mm
#define SIZE_mm 4
#define A0  (*(volatile uint32_t*) 0x32000010)
#define A1  (*(volatile uint32_t*) 0x32000014)
#define A2  (*(volatile uint32_t*) 0x32000018)
#define A3  (*(volatile uint32_t*) 0x3200001c)
#define A4  (*(volatile uint32_t*) 0x32000020)
#define A5  (*(volatile uint32_t*) 0x32000024)
#define A6  (*(volatile uint32_t*) 0x32000028)
#define A7  (*(volatile uint32_t*) 0x3200002c)
#define A8  (*(volatile uint32_t*) 0x32000030)
#define A9  (*(volatile uint32_t*) 0x32000034)
#define A10 (*(volatile uint32_t*) 0x32000038)
#define A11 (*(volatile uint32_t*) 0x3200003c)
#define A12 (*(volatile uint32_t*) 0x32000040)
#define A13 (*(volatile uint32_t*) 0x32000044)
#define A14 (*(volatile uint32_t*) 0x32000048)
#define A15 (*(volatile uint32_t*) 0x3200004c)

#define B0  (*(volatile uint32_t*) 0x32000050)
#define B1  (*(volatile uint32_t*) 0x32000054)
#define B2  (*(volatile uint32_t*) 0x32000058)
#define B3  (*(volatile uint32_t*) 0x3200005c)
#define B4  (*(volatile uint32_t*) 0x32000060)
#define B5  (*(volatile uint32_t*) 0x32000064)
#define B6  (*(volatile uint32_t*) 0x32000068)
#define B7  (*(volatile uint32_t*) 0x3200006c)
#define B8  (*(volatile uint32_t*) 0x32000070)
#define B9  (*(volatile uint32_t*) 0x32000074)
#define B10 (*(volatile uint32_t*) 0x32000078)
#define B11 (*(volatile uint32_t*) 0x3200007c)
#define B12 (*(volatile uint32_t*) 0x32000080)
#define B13 (*(volatile uint32_t*) 0x32000084)
#define B14 (*(volatile uint32_t*) 0x32000088)
#define B15 (*(volatile uint32_t*) 0x3200008c)

#define mm_out (*(volatile uint32_t*) 0x32000090)


int result_mm[SIZE_mm*SIZE_mm];
int* __attribute__ ( ( section ( ".mprjram" ) ) ) matmul()
{
	A0  = 0;
	A1  = 1;
	A2  = 2;
	A3  = 3;
	A4  = 0;
	A5  = 1;
	A6  = 2;
	A7  = 3;
	A8  = 0;
	A9  = 1;
	A10 = 2;
	A11 = 3;
	A12 = 0;
	A13 = 1;
	A14 = 2;
	A15 = 3;

	B0  = 1 ;
	B1  = 2 ;
	B2  = 3 ;
	B3  = 4 ;
	B4  = 5 ;
	B5  = 6 ;
	B6  = 7 ;
	B7  = 8 ;
	B8  = 9 ;
	B9  = 10;
	B10 = 11;
	B11 = 12;
	B12 = 13;
	B13 = 14;
	B14 = 15;
	B15 = 16;

	for (int i=0; i<16; i++) {
		result_mm[i] = mm_out;
	}
	return result_mm;
}

// fir
#define N 11
int outputsignal[N];

#define TAP0  (*(volatile uint32_t*) 0x31000010)
#define TAP1  (*(volatile uint32_t*) 0x31000014)
#define TAP2  (*(volatile uint32_t*) 0x31000018)
#define TAP3  (*(volatile uint32_t*) 0x3100001c)
#define TAP4  (*(volatile uint32_t*) 0x31000020)
#define TAP5  (*(volatile uint32_t*) 0x31000024)
#define TAP6  (*(volatile uint32_t*) 0x31000028)
#define TAP7  (*(volatile uint32_t*) 0x3100002c)
#define TAP8  (*(volatile uint32_t*) 0x31000030)
#define TAP9  (*(volatile uint32_t*) 0x31000034)
#define TAP10 (*(volatile uint32_t*) 0x31000038)
#define FIR_DATA (*(volatile uint32_t*) 0x3100003c)
#define FIR_OUTPUT (*(volatile uint32_t*) 0x31000040)
#define LENGTH (*(volatile uint32_t*) 0x31000044)

int* __attribute__ ( ( section ( ".mprjram" ) ) ) fir(){
	
	TAP0  = 0;
	TAP1  = -10;
	TAP2  = -9;
	TAP3  = 23;
	TAP4  = 56;
	TAP5  = 63;
	TAP6  = 56;
	TAP7  = 23;
	TAP8  = -9;
	TAP9  = -10;
	TAP10 = 0;
	LENGTH = 11;

	FIR_DATA = 1;
	outputsignal[0] = FIR_OUTPUT;
	FIR_DATA = 2;
	outputsignal[1] = FIR_OUTPUT;
	FIR_DATA = 3;
	outputsignal[2] = FIR_OUTPUT;
	FIR_DATA = 4;
	outputsignal[3] = FIR_OUTPUT;

	FIR_DATA = 5;
	outputsignal[4] = FIR_OUTPUT;
	FIR_DATA = 6;
	outputsignal[5] = FIR_OUTPUT;
	FIR_DATA = 7;
	outputsignal[6] = FIR_OUTPUT;
	FIR_DATA = 8;
	outputsignal[7] = FIR_OUTPUT;
	FIR_DATA = 9;
	outputsignal[8] = FIR_OUTPUT;
	FIR_DATA = 10;
	outputsignal[9] = FIR_OUTPUT;
	FIR_DATA = 11;
	outputsignal[10] = FIR_OUTPUT;
	return outputsignal;
}

// qs
#define SIZE 10
int QS_results[SIZE];

#define QS0  (*(volatile uint32_t*) 0x33000010)
#define QS1  (*(volatile uint32_t*) 0x33000014)
#define QS2  (*(volatile uint32_t*) 0x33000018)
#define QS3  (*(volatile uint32_t*) 0x3300001c)
#define QS4  (*(volatile uint32_t*) 0x33000020)
#define QS5  (*(volatile uint32_t*) 0x33000024)
#define QS6  (*(volatile uint32_t*) 0x33000028)
#define QS7  (*(volatile uint32_t*) 0x3300002c)
#define QS8  (*(volatile uint32_t*) 0x33000030)
#define QS9  (*(volatile uint32_t*) 0x33000034)

#define QS_result  (*(volatile uint32_t*) 0x33000038)


int* __attribute__ ( ( section ( ".mprjram" ) ) ) qsort(){
	QS0 = 893;
	QS1 = 40;
	QS2 = 3233;
	QS3 = 4267;
	QS4 = 2669;
	QS5 = 2541;
	QS6 = 9073;
	QS7 = 6023;
	QS8 = 5681;
	QS9 = 4622;

	for (int i=0; i<SIZE; i++) {
		QS_results[i] = QS_result;
	}
	return QS_results;
}
	
