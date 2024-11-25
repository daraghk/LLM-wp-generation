void foo(int N, int a[N], int M, int b[M]) 
{
    // Weakest precondition

    if (N > M || N <= 0 || M <=0) {
		goto end;
    }

    // Loop Invariant:
    for (int i = 0; i < N; i++) {
		int nd;
		if (nd){
			if (a[i] != b[i]) {
	            a[0] = 0; 
	        }
		}
    }

    int zeros = 0;
    for (int i = 0; i < N; i++) {
        if (a[i] == 0) {
	        zeros++;
	    }
    }
    if (zeros == 0) goto ERROR_1;

    goto end;
    ERROR_1:;
    end:;
    return;
}