#include <iostream>
using namespace std;

int func_fb(int n) {
    if (n<2){
        return n;
    }
    return func_fb(n-1) + func_fb(n-2);
}


int main () {

  int n;
  cout << "Enter number : " ;
  cin >> n;
 
  cout << "fib("<< n << ") = " << func_fb(n);

    return 0;
}
