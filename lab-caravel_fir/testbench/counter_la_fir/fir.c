#include "fir.h"

void __attribute__ ( ( section ( ".mprjram" ) ) ) initfir() {
	//initial your fir
	data_len = 64;

	tap0 = taps[0];
	tap1 = taps[1];
	tap2 = taps[2];
	tap3 = taps[3];
	tap4 = taps[4];
	tap5 = taps[5];
	tap6 = taps[6];
	tap7 = taps[7];
	tap8 = taps[8];
	tap9 = taps[9];
	tapA = taps[10];

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
		while ((AP >> 4) & 1 != 1) { 
			// wait until Xn [4] is ready
		}
		Xn = i;

		while ((AP >> 5) & 1 != 1) {
			// wait until Yn [5] is ready
		}
		// ans = Yn;
		outputsignal[i] = Yn;
	}

	// output to mprj[31:24], and stop timer
	reg_mprj_datal = ((outputsignal[63] & 0xFF) << 24) | (0x5A << 16);
	
	return outputsignal;
}
		
