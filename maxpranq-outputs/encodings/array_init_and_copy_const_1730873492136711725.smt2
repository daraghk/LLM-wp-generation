(declare-var FH0 (Array Int Int))
(declare-var FH1 (Array Int Int))
(declare-var FH2 Int)
(declare-var FH3 Int)
(declare-var FH4 (Array Int Int))
(declare-var FH5 (Array Int Int))
(declare-var FH6 Int)
(declare-var FH7 Int)
(declare-var FH4P (Array Int Int))
(declare-var FH5P (Array Int Int))
(declare-var FH6P Int)
(declare-var FH7P Int)
(declare-var i1 Int)
(declare-rel inv1 ((Array Int  Int ) (Array Int  Int ) Int Int )) 
(declare-rel inv2 ((Array Int  Int ) (Array Int  Int ) Int Int )) 
(declare-rel fail())

(rule (=> (and (= 0 FH6P) (= FH0 FH4P) (= FH3 FH7P) (> FH3 0) (= FH1 FH5P) (or (exists ((i1 Int)) (and (< 0 i1) (>= i1 0) (< i1 FH3) (< (select FH0 i1) 1))) (exists ((i1 Int)) (and (< 0 i1) (>= i1 0) (< i1 FH3) (< (select FH0 i1) 2))))) (inv2 FH4P FH5P FH6P FH7P)))
(rule (=> (and (= FH7 FH7P) (= FH4 FH4P) (< FH6 FH7) (= FH6P (+ FH6 1)) (= (store FH5 FH6 (select FH4 FH6)) FH5P) (inv2 FH4 FH5 FH6 FH7)) (inv2 FH4P FH5P FH6P FH7P)))
(rule (=> (and (= FH7 FH7P) (= FH4 FH4P) (< FH6 FH7) (= FH6P (+ FH6 1)) (= (store FH5 FH6 (+ (select FH4 FH6) (- 1))) FH5P) (inv2 FH4 FH5 FH6 FH7)) (inv2 FH4P FH5P FH6P FH7P)))
(rule (=> (and (>= FH6 FH7) (inv2 FH4 FH5 FH6 FH7) (forall ((i1 Int)) (or (>= 0 i1) (>= (select FH5 i1) 1) (>= i1 FH7)))) fail))
(query fail)

