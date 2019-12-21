; get the depth of a nonlinear list -> considering the base level level 0

(defun depthFun (L)
    (cond 
        ((null L) 0)  ; empty list (end of the list) 
        ((null (car L))(max (+ 1 (depthFun (car L))) (depthFun (cdr L)))) ; empty list(somewhere inside the list)
        ((atom (car L)) (depthFun (cdr L))) ; atom 
        (T (max (+ 1 (depthFun (car L))) (depthFun (cdr L)))) ; list
    )
)
