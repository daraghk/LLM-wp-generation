(declare-var FH0 (Array Int Int))
(declare-var FH1 Int)
(declare-var FH2 Int)
(declare-var FH3 (Array Int Int))
(declare-var FH4 Int)
(declare-var FH5 Int)
(declare-var FH3P (Array Int Int))
(declare-var FH4P Int)
(declare-var FH5P Int)
(declare-var i1 Int)
(declare-rel inv1 ((Array Int  Int ) Int Int )) 
(declare-rel inv2 ((Array Int  Int ) Int Int )) 
(declare-rel fail())

(rule (=> (and (= 0 FH4P) (= FH2 FH5P) (> FH2 0) (= FH0 FH3P) (exists ((i1 Int)) (and (< 0 i1) (>= i1 0) (< i1 FH2) (< (select FH0 i1) 0)))) (inv2 FH3P FH4P FH5P)))
(rule (=> (and (= FH5 FH5P) (< FH4 FH5) (= FH4P (+ FH4 1)) (= (let ((a!1 (select (store FH3 FH4 (+ (select FH3 FH4) 1)) FH4)))
  (store FH3 FH4 (+ a!1 1))) FH3P) (inv2 FH3 FH4 FH5)) (inv2 FH3P FH4P FH5P)))
(rule (=> (and (= FH5 FH5P) (< FH4 FH5) (= FH4P (+ FH4 1)) (= (let ((a!1 (select (store FH3 FH4 (+ (select FH3 FH4) 2)) FH4)))
  (store FH3 FH4 (+ a!1 2))) FH3P) (inv2 FH3 FH4 FH5)) (inv2 FH3P FH4P FH5P)))
(rule (=> (and (>= FH4 FH5) (inv2 FH3 FH4 FH5) (forall ((i1 Int)) (or (>= 0 i1) (>= i1 FH5) (>= (select FH3 i1) 2)))) fail))
(query fail)

