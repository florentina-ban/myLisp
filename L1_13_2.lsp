; sum of numerical atoms in a nonlinear list

(defun mysum(L)
    (cond
        ((numberp L) L)
        ((atom L) 0)
        (T (apply #'+ (mapcar #'mysum L)) )
    )

)