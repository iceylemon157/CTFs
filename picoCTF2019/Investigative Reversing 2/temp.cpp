#include "bits/stdc++.h"
using namespace std;

signed main() {
	int a, b, c;
	cin >> a >> b >> c;
	if(a) {
		b = b >> (a & 0x1f);
	}
	int ret = c & 0xfe | b & 1;
	cout << ret << endl;
}
