#include "trem.h"
#include <iostream>
#include <hls_stream.h>

using namespace std;

int main() {
	hls::stream<float> in("test signal");
	hls::stream<float> out("output");

	int i = 200;
	while (i --> 0) {
		in << 1.0f;
		trem(in, out);
		float tmp;
		out >> tmp;
		cout << tmp << "\t";
	}

	return 0;
}
