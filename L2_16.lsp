;check if a binary tree is balanced

(defun depth(L)
    (cond
        ((null L) 0)
        (T (+ 1 (max (depth (cadr L)) (depth (caddr L)) )) )
    )
)

(defun balanced(arb)
    (cond
        ((null arb) T)
        ((> (abs ( - (depth (cadr arb)) (depth (caddr arb)) )) 1) nil)
        (T (and (balanced (cadr arb)) (balanced(caddr arb)) ) )
    )
)