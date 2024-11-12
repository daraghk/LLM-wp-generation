void foo(int N, int a[N], int b[N], int c[N])
{
  // Weakest Precondition

  int i = 0;
  if (N <= 0) goto end;
  
  // Loop Invariant:
  while (i < N) {
    int nd;
    if (nd) {
      a[i] = a[i] + 1;
      a[i] = a[i] + 1;
    } else {
      a[i] = a[i] + 2;
      a[i] = a[i] + 2;
    }
      
    i++;
  }


  i = 0;
  while (i < N) {
    if (a[i] < 2) goto ERROR_1;
    i++;
  }
  goto end;
 ERROR_1:;
 end:;
   return;
}


