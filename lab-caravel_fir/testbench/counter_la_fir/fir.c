#include "fir.h"

void __attribute__ ( ( section ( ".mprjram" ) ) ) initfir() {
	//initial your fir
	data_len = 64;

	// faster
	tap0 = 0;
	tap1 = -10;
	tap2 = -9;
	tap3 = 23;
	tap4 = 56;
	tap5 = 63;
	tap6 = 56;
	tap7 = 23;
	tap8 = -9;
	tap9 = -10;
	tapA = 0;

	return;
}

int* __attribute__ ( ( section ( ".mprjram" ) ) ) fir(){
	initfir();
	int ans;
	AP = 1;

	// start timer
	reg_mprj_datal = (0xA5 << 16);

	//write down your fir
	for (int i=0; i<64; i++) {
		while ((AP >> 4) & 1 != 1) {} // wait until Xn [4] is ready
		Xn = i;
		while ((AP >> 5) & 1 != 1) {} // wait until Yn [5] is ready
		outputsignal[i] = Yn;
	}

	// output to mprj[31:24], and stop timer
	reg_mprj_datal = ((outputsignal[63] & 0xFF) << 24) | (0x5A << 16);
	
	return outputsignal;
}
		
