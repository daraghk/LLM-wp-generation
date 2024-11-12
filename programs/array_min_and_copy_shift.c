void foo(int N, int a[N], int b[N], int c[N], int j)
{
  // Weakest Precondition

  int i = 0;
  if (N <= 0) goto end;
  
  // Loop Invariant:
  while (i < N) {
    int nd;
    if (nd) {
      b[i] = a[i] - j;
    } else {
      c[i] = a[i] - j;
    }
    i++;
  }

  i = 0;
  while (i < N) {
    if (b[i] < 0 || c[i] < 0) goto ERROR_1;
    i++;
  }
  goto end;
 ERROR_1:;
 end:;
   return;
}


