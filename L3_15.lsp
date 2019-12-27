;number of atoms in a nonlinear list with map functions


(defun no(L)
    (cond
        ((null L) 0)
        ((atom L) 1)
        (T (apply #'+ (mapcar #'no L)) )
    )
)