; maximum of the numerical atoms from the base level in a nonlinear list 

(defun mmax(L m)
    (cond
        ((null L) m)
        ((and (numberp (car  L)) (< m (car L)) ) (mmax (cdr L) (car L)))
        (T (mmax(cdr L) m))
    )
)

(defun mainF(L)
    (cond
        ((null L) "no numbers on the first level")
        ((numberp (car L)) (mmax (cdr L) (car L)))
        (T (mainF (cdr L)))
    )
)