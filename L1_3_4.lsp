;common elements of 2 sets

(defun myfind(L E)
    (cond
        ((null L) nil)
        ((= (car L) E) T)
        (T (myfind (cdr L) E))
    )
)

(defun intersect(L1 L2)
    (cond
        ((null L1) nil)
        ((myfind L2 (car L1)) (append (list(car L1)) (intersect (cdr L1) L2)))
        (T (intersect (cdr L1) L2))
    )
)

