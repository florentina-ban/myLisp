; associacion list
; ex (func '(A B C) '(X Y Z)) => ( (A.X)(B.Y)(C.Z) )

(defun asso(L1 L2)
    (cond
        ((or (null L1) (null L2)) nil)
        (T (append (list(cons (car L1) (car L2)) ) (asso (cdr L1) (cdr L2))))
    )
)