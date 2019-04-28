#include <hls_stream.h>
#include <ap_int.h>
#include "trem.h"

static float dep = 1.0;
static short counter_limit = 4000;
static short control = 1;
static short mod = 0;
static float offset = 1 - dep;


float tremolo_calculation(float xin) {
    float yout;
    float m;

    //Generating the triangle signal, limiting to the depth (pos and neg)
    //Trying to maintain less than 10hz
    m = (float)mod*(float)dep/(float)counter_limit;
    yout = (m + offset)*xin;

    mod = mod+control;

    if (mod > counter_limit) {
    	control = -1;
    }
    else if(!mod) {
    	control = 1;
    }
    return yout;
}

void trem(
	hls::stream<float>	&in, //source of input samples
	hls::stream<float>	&out //source of output samples
	) {
#pragma HLS INTERFACE axis register both port=out
#pragma HLS INTERFACE axis register both port=in
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS DATAFLOW

	float trem_out = 0;
	float trem_in;

	in >> trem_in; //Converting input stream to signed notation
	trem_out = tremolo_calculation(trem_in);

	/*Send the output value to the codec*/
	 out << trem_out;
}
