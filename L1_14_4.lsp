; delete all the aparition of the maximum numerical atom from a nonlinear list
(defun getMax (L)
    (cond
        ((numberp L) L)
        ((atom L) -1000)
        (T (apply #'max (mapcar #'getMax L )))
    )
)

(defun myRemove(L m)
    (cond
        ((null L) nil)
        ((equal (car L) m) (myRemove (cdr L) m) )
        ((atom (car L)) (cons (car L) (myRemove (cdr L) m) ) )
        (T (cons (myRemove (car L) m)   (myRemove (cdr L) m) ) )
    )
)

(defun mainFunc(L)
    (myRemove L (getMax L))
)