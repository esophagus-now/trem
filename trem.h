#ifndef TREM_H
#define TREM_H 1
#include <hls_stream.h>

void trem(
	hls::stream<float>	&in, //source of input samples
	hls::stream<float>	&out //source of output samples
	);

#endif
