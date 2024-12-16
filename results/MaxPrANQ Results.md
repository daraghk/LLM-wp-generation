### Example 1: array_init_addvar.c
##### Weakest Precondition
```c
(define-fun inv1 ((_FH_0 (Array Int Int))
				  (_FH_1 Int)
				  (_FH_2 Int)) Bool
  (and 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (< i1 0) 
			  (>= i1 _FH_2) 
			  (>= (+ i1 (select _FH_0 i1)) (* 2 i1)))) 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (< i1 0) 
			  (>= i1 _FH_2) 
			  (>= (+ i1 (select _FH_0 i1)) (+ (* 2 i1) 1))))))
```

Array conditions extracted for ease of reading:
A[i] + i >= 2i ∧
A[i] + i >= 2i + 1
->
A[i] >= i + 1
##### (Loop) Invariants
```c
(define-fun inv2 ((_FH_3 (Array Int Int))
				  (_FH_4 Int)
				  (_FH_5 Int)) Bool
  (and 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (>= i1 _FH_5) 
			  (>= (select _FH_3 i1) (* 2 i1)) 
			  (>= i1 _FH_4))) 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (>= i1 _FH_5) 
			  (>= (+ i1 (select _FH_3 i1)) (* 2 i1)) 
			  (not (>= i1 _FH_4)))) 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (>= i1 _FH_5) 
			  (not (>= i1 _FH_4)) 
			  (>= (+ i1 (select _FH_3 i1)) (+ (* 2 i1) 1))))))
```

Array conditions extracted for ease of reading:
A[i] >= 2i ∧
A[i] + i >= 2i ∧
A[i] + i >= 2i + 1 
### Example 2: array_init_and_copy_const.c
##### Weakest Precondition
```c
(define-fun inv1 ((_FH_0 (Array Int Int))
				  (_FH_1 (Array Int Int))
				  (_FH_2 Int)
				  (_FH_3 Int)) Bool
  (and 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (< i1 0) 
			  (>= i1 _FH_3) 
			  (>= (select _FH_0 i1) 1))) 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (< i1 0) 
			  (>= i1 _FH_3) 
			  (>= (select _FH_0 i1) 2)))))
```

Array conditions extracted for ease of reading:
A[i] >= 1 ∧
A[i] >= 2
##### (Loop) Invariants
```c
(define-fun inv2 ((_FH_4 (Array Int Int))
				  (_FH_5 (Array Int Int))
				  (_FH_6 Int)
				  (_FH_7 Int)) Bool
  (and 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (>= (select _FH_5 i1) 1) 
			  (>= i1 _FH_7) 
			  (>= i1 _FH_6))) 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (>= i1 _FH_7) 
			  (>= (select _FH_4 i1) 1) 
			  (not (>= i1 _FH_6)))) 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (>= i1 _FH_7) 
			  (not (>= i1 _FH_6)) 
			  (>= (select _FH_4 i1) 2)))))
```

Array conditions extracted for ease of reading:
(B[i] ≥ 1) ∧
(A[i] ≥ 1) ∧
(A[i] ≥ 2)
### Example 3: array_init_pair_symmetr.c
##### Weakest Precondition
```c
(define-fun inv1 ((_FH_0 (Array Int Int))
				  (_FH_1 (Array Int Int))
				  (_FH_2 (Array Int Int))
				  (_FH_3 Int)
				  (_FH_4 Int)) Bool
  (and 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (< i1 0) 
			  (>= i1 _FH_4) 
			  (= (+ (select _FH_0 i1) (select _FH_1 i1)) 0))) 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (< i1 0) 
			  (>= i1 _FH_4) 
			  (= (+ (select _FH_0 i1) (- (select _FH_1 i1))) 0)))))
```

Array conditions extracted for ease of reading:
(A[i] + B[i] = 0)) ∧
(A[i] - B[i] = 0))
##### (Loop) Invariants
```c
(define-fun inv2 ((_FH_5 (Array Int Int))
				  (_FH_6 (Array Int Int))
				  (_FH_7 (Array Int Int))
				  (_FH_8 Int)
				  (_FH_9 Int)) Bool
  (and 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (>= i1 _FH_9) 
			  (= (select _FH_7 i1) 0) 
			  (>= i1 _FH_8))) 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (>= i1 _FH_9) 
			  (= (+ (select _FH_5 i1) (select _FH_6 i1)) 0) 
			  (not (>= i1 _FH_8)))) 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (>= i1 _FH_9) 
			  (not (>= i1 _FH_8)) 
			  (= (+ (select _FH_5 i1) (- (select _FH_6 i1))) 0)))))
```
  
Array conditions extracted for ease of reading:
(C[i] = 0) ∧
(A[i] + B[i] = 0) ∧
(A[i] - B[i] = 0))
### Example 4: nondet-array-bench8.c
##### Weakest Precondition
```c
(define-fun pre ((_FH_0 Int)
				 (_FH_1 (Array Int Int))
				 (_FH_2 (Array Int Int))
				 (_FH_3 (Array Int Int))) Bool
  (and 
	  (forall ((i1 Int)) 
		  (or (> 0 i1) 
			  (< i1 0) 
			  (>= i1 _FH_0) 
			  (= (select _FH_1 i1) (select _FH_2 i1)))) 
	  (forall ((i1 Int)) 
		  (or (> 0 i1) 
			  (< i1 0) 
			  (>= i1 _FH_0) 
			  (= (- (select _FH_3 i1)) 0)))))
```

Array conditions extracted for ease of reading:
(A[i] = B[i])) ∧
(C[i] = 0)
##### (Loop) Invariants
```c
(define-fun inv ((_FH_4 Int)
				 (_FH_5 Int)
				 (_FH_6 (Array Int Int))
				 (_FH_7 (Array Int Int))
				 (_FH_8 (Array Int Int))) Bool
  (and 
	  (forall ((i1 Int)) 
		  (or (> 0 i1) 
			  (= (select _FH_6 i1) (select _FH_7 i1)) 
			  (>= i1 _FH_5) 
			  (>= i1 _FH_4))) 
	  (forall ((i1 Int)) 
		  (or (> 0 i1) 
			  (= (select _FH_6 i1) (select _FH_7 i1)) 
			  (>= i1 _FH_5) 
			  (not (>= i1 _FH_4)))) 
	  (forall ((i1 Int)) 
		  (or (> 0 i1) 
			  (>= i1 _FH_5) 
			  (not (>= i1 _FH_4)) 
			  (= (- (select _FH_8 i1)) 0)))))
```

Array conditions extracted for ease of reading:
(A[i] = B[i]) ∧
(A[i] = B[i]) ∧
(C[i] = 0))
### Example 5: nondet-array-bench20.c
##### Weakest Precondition
```c
(define-fun pre ((_FH_0 Int)
				 (_FH_1 (Array Int Int))
				 (_FH_2 (Array Int Int))
				 (_FH_3 (Array Int Int))) Bool
  (forall ((i1 Int)) 
	  (or (> 0 i1) 
		  (< i1 0) 
		  (>= i1 _FH_0) 
		  (= (select _FH_2 i1) 0))))
```

Array conditions extracted for ease of reading:
(B[i] = 0))
##### (Loop) Invariants
```c
(define-fun inv ((_FH_4 Int)
				 (_FH_5 Int)
				 (_FH_6 (Array Int Int))
				 (_FH_7 (Array Int Int))
				 (_FH_8 (Array Int Int))) Bool
  (and 
	  (forall ((i1 Int)) 
		  (or (> 0 i1) 
			  (>= i1 _FH_5) 
			  (= (select _FH_6 i1) (select _FH_8 i1)) 
			  (>= i1 _FH_4))) 
	  (forall ((i1 Int)) 
		  (or (> 0 i1) 
			  (>= i1 _FH_5) 
			  (= (select _FH_7 i1) 0) 
			  (not (>= i1 _FH_4))))))
```
  
Array conditions extracted for ease of reading:
(A[i] = C[i]) ∧
(B[i] = 0)
### Example 6: array_init_increm_two_arrs_antisym.c
##### Weakest Precondition
```c
(define-fun inv1 ((_FH_0 (Array Int Int))
				  (_FH_1 (Array Int Int))
				  (_FH_2 Int)
				  (_FH_3 Int)) Bool
  (and 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (< i1 0) 
			  (>= i1 _FH_3) 
			  (>= (select _FH_0 i1) (+ (select _FH_1 i1) (- 1))))) 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (< i1 0) 
			  (>= i1 _FH_3) 
			  (>= (select _FH_0 i1) (+ (select _FH_1 i1) 1))))))
```

Array conditions extracted for ease of reading:
(A[i] ≥ B[i] - 1)) ∧
(A[i] ≥ B[i] + 1))
->
(A[i] - B[i] ≥  1))
##### (Loop) Invariants
```c
(define-fun inv2 ((_FH_4 (Array Int Int))
				  (_FH_5 (Array Int Int))
				  (_FH_6 Int)
				  (_FH_7 Int)) Bool
  (and 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (>= i1 _FH_7) 
			  (>= (select _FH_4 i1) (select _FH_5 i1)) 
			  (>= i1 _FH_6))) 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (>= i1 _FH_7) 
			  (>= (select _FH_4 i1) (+ (select _FH_5 i1) (- 1))) 
			  (not (>= i1 _FH_6)))) 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (>= i1 _FH_7) 
			  (not (>= i1 _FH_6)) 
			  (>= (select _FH_4 i1) (+ (select _FH_5 i1) 1))))))
```

Array conditions extracted for ease of reading:
(A[i] ≥ B[i]) ∧
(A[i] ≥ B[i] - 1) ∧
(A[i] ≥ B[i] + 1)
### Example 7: array_init_increm_twice.c
##### Weakest Precondition
```c
(define-fun inv1 ((_FH_0 (Array Int Int))
				  (_FH_1 Int)
				  (_FH_2 Int)) Bool
  (forall ((i1 Int)) 
	  (or (>= 0 i1) 
		  (< i1 0) 
		  (>= i1 _FH_2) 
		  (>= (select _FH_0 i1) 0))))
```

Array conditions extracted for ease of reading:
(A[i] ≥ 0)
##### (Loop) Invariants
```c
(define-fun inv2 ((_FH_3 (Array Int Int))
				  (_FH_4 Int)
				  (_FH_5 Int)) Bool
  (and 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (>= i1 _FH_5) 
			  (>= (select _FH_3 i1) 2) 
			  (>= i1 _FH_4))) 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (>= i1 _FH_5) 
			  (>= (select _FH_3 i1) 0) 
			  (not (>= i1 _FH_4))))))
```
  
Array conditions extracted for ease of reading:
(A[i] ≥ 2) ∧
(A[i] ≥ 0)
### Example 8: array_init_increm.c
##### Weakest Precondition
```c
(define-fun inv1 ((_FH_0 (Array Int Int))
				  (_FH_1 Int)
				  (_FH_2 Int)) Bool
  (and 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (< i1 0) 
			  (>= i1 _FH_2) 
			  (>= (select _FH_0 i1) 0))) 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (< i1 0) 
			  (>= i1 _FH_2) 
			  (>= (select _FH_0 i1) 2)))))​
```

Array conditions extracted for ease of reading:
(A[i] ≥ 0) ∧
(A[i] ≥ 2)
##### (Loop) Invariants
```c
(define-fun inv2 ((_FH_3 (Array Int Int))
				  (_FH_4 Int)
				  (_FH_5 Int)) Bool
  (and 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (>= i1 _FH_5) 
			  (>= (select _FH_3 i1) 1) 
			  (>= i1 _FH_4))) 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (>= i1 _FH_5) 
			  (>= (select _FH_3 i1) 0) 
			  (not (>= i1 _FH_4)))) 
	  (forall ((i1 Int)) 
		  (or (>= 0 i1) 
			  (>= i1 _FH_5) 
			  (not (>= i1 _FH_4)) 
			  (>= (select _FH_3 i1) 2)))))
```

Array conditions extracted for ease of reading:
(A[i] ≥ 1) ∧
(A[i] ≥ 0) ∧
(A[i] ≥ 2))
### Example 9: array_min_and_copy_shift.c
##### Weakest Precondition
```c
define-fun inv1 ((_FH_0 (Array Int Int))
				 (_FH_1 (Array Int Int))
				 (_FH_2 (Array Int Int))
				 (_FH_3 Int)
				 (_FH_4 Int)
				 (_FH_5 Int)) Bool
  (and 
	  (forall ((i1 Int)) 
		  (or (> 0 i1) 
			  (< i1 0) 
			  (>= i1 _FH_5) 
			  (and 
				  (>= (+ (select _FH_0 i1) (- _FH_4)) 0) 
				  (>= (select _FH_2 i1) 0)))) 
	  (forall ((i1 Int)) 
		  (or (> 0 i1) 
			  (< i1 0) 
			  (>= i1 _FH_5) 
			  (and 
				  (>= (+ (select _FH_0 i1) (- _FH_4)) 0) 
				  (>= (select _FH_1 i1) 0))))))
```

Array conditions extracted for ease of reading:
((A[i] - N ≥ 0) ∧ (C[i] ≥ 0))) ∧
((A[i] - N ≥ 0) ∧ (B[i] ≥ 0)))
##### (Loop) Invariants
```c
(define-fun inv2 ((_FH_6 (Array Int Int))
				  (_FH_7 (Array Int Int))
				  (_FH_8 (Array Int Int))
				  (_FH_9 Int)
				  (_FH_10 Int)
				  (_FH_11 Int)) Bool
  (and 
	  (forall ((i1 Int)) 
		  (or (> 0 i1) 
			  (and 
				  (>= (select _FH_8 i1) 0) 
				  (>= (select _FH_7 i1) 0)) 
			  (>= i1 _FH_11) 
			  (>= i1 _FH_9))) 
	  (forall ((i1 Int)) 
		  (or (> 0 i1) 
			  (>= i1 _FH_11) 
			  (and 
				  (>= (select _FH_8 i1) 0) 
				  (>= (+ (- _FH_10) (select _FH_6 i1)) 0)) 
				  (not (>= i1 _FH_9)))) 
	  (forall ((i1 Int)) 
		  (or (> 0 i1) 
			  (>= i1 _FH_11) 
			  (not (>= i1 _FH_9)) 
			  (and 
				  (>= (select _FH_7 i1) 0) 
				  (>= (+ (- _FH_10) (select _FH_6 i1)) 0))))))
```
  
Array conditions extracted for ease of reading:
(C[i] ≥ 0 ∧ B[i] ≥ 0) ∧
(C[i] ≥ 0 ∧ M ≥ A[i]) ∧
(B[i] ≥ 0 ∧ M ≥ A[i])
### Example 10: nondet-array-bench15.c
##### Weakest Precondition
```c
(define-fun pre ((_FH_0 Int)
				 (_FH_1 (Array Int Int))
				 (_FH_2 (Array Int Int))
				 (_FH_3 (Array Int Int))) Bool
  (and 
	  (forall ((i1 Int)) 
		  (or (> 0 i1) 
			  (< i1 0) 
			  (>= i1 _FH_0) 
			  (= (select _FH_1 i1) (select _FH_2 i1)))) 
	  (forall ((i1 Int)) 
		  (or (> 0 i1) 
			  (< i1 0) 
			  (>= i1 _FH_0) 
			  (= (select _FH_1 i1) 0)))))
```

Array conditions extracted for ease of reading:
(A[i] = B[i])) ∧
(A[i] = 0))
##### (Loop) Invariants
```c
(define-fun inv ((_FH_4 Int)
				 (_FH_5 Int)
				 (_FH_6 (Array Int Int))
				 (_FH_7 (Array Int Int))
				 (_FH_8 (Array Int Int))) Bool
  (and 
	  (forall ((i1 Int)) 
		  (or (> 0 i1) 
			  (= (select _FH_6 i1) (select _FH_7 i1)) 
			  (>= i1 _FH_5) 
			  (>= i1 _FH_4))) 
	  (forall ((i1 Int)) 
		  (or (> 0 i1) 
			  (= (select _FH_6 i1) (select _FH_7 i1)) 
			  (>= i1 _FH_5) 
			  (not (>= i1 _FH_4)))) 
	  (forall ((i1 Int)) 
		  (or (> 0 i1) 
			  (>= i1 _FH_5) 
			  (not (>= i1 _FH_4)) 
			  (= (select _FH_6 i1) 0)))))
```

Array conditions extracted for ease of reading:
(A[i] = B[i]) ∧
(A[i] = B[i])  ∧
(A[i] = 0))