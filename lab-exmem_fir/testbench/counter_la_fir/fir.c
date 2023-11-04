#include "fir.h"

void __attribute__ ( ( section ( ".mprjram" ) ) ) initfir() {
	//initial your fir
	for (int i=0 ; i<N ; i++) {
		inputbuffer[i] = 0;
		outputsignal[i] = 0;
	}
}

int* __attribute__ ( ( section ( ".mprjram" ) ) ) fir() {
	initfir();
	//write down your fir
	for (int i=0; i<N ; i++){
		// shift
		inputbuffer[10] = inputbuffer[9];
		inputbuffer[9] = inputbuffer[8];
		inputbuffer[8] = inputbuffer[7];
		inputbuffer[7] = inputbuffer[6];
		inputbuffer[6] = inputbuffer[5];
		inputbuffer[5] = inputbuffer[4];
		inputbuffer[4] = inputbuffer[3];
		inputbuffer[3] = inputbuffer[2];
		inputbuffer[2] = inputbuffer[1];
		inputbuffer[1] = inputbuffer[0];

		// give input
		inputbuffer[0] = inputsignal[i];
		
		// calculate fir
		for (int j=0; j<N; j++) {
			outputsignal[i] = outputsignal[i] + (inputbuffer[j] * taps[j]);
		}
	}

	return outputsignal;
}
		
