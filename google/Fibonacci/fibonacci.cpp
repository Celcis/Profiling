#include "fibonacci.h"



int fib_recursive(int n)
{
    if((n==1)||(n==0))
    {
        return(n);
    }
    else
    {
        return(fib_recursive(n-1)+fib_recursive(n-2));
    }
}

void fib_iterative(int n){

   int x = 0, y = 1, z = 0;

   for (int i = 0; i < n; i++) {
      z = x + y;
      x = y;
      y = z;
   }
  
}

