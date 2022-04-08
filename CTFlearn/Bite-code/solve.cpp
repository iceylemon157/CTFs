#include "iostream"
#include "bitset"
#include "climits"
using namespace std;

int checkNum(int xt) {
    unsigned int x = xt;
    unsigned int a = x << 3;
    unsigned int b = x ^ 525024598;
    unsigned int result = a ^ b;
    unsigned int tmp = -889275714;
    if(result == tmp) return xt;
    return 0;
}

signed main() {
    for(int i = INT_MIN; i <= INT_MAX; i ++) {
        int a = checkNum(i);
        if(a) {
            cout << "flag is " << a << endl;
            return 0;
        }
    }
}