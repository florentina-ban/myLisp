; number of atoms on the base level

(defun no(L)
    (cond 
        ((null L) 0)
        ((null (car L)) (no(cdr L)))
        ((atom (car L)) (+ 1 (no (cdr L))))
        (T (no (cdr L)))
    )
)