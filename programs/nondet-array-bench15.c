void foo(int N, int a[N], int b[N], int c[N])
{
  // Weakest Precondition

  int i = 0;
  if (N <= 0) goto end;
  
  // Loop Invariant:
  while (i < N) {
    int nd;
    if (nd) {
      c[i] = a[i];
    } else {
      a[i] = a[i] + b[i];
    }
    i++;
  }

  i = 0;
  while (i < N) {
    if (a[i] != b[i]) goto ERROR_1;
    i++;
  }
  goto end;
 ERROR_1:;
 end:;
   return;
}
