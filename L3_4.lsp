; sum of numerical atoms with map functions

(defun mysum(L)
    (cond
        ((numberp L) L)
        ((symbolp L) 0)
        (T (apply #'+ (mapcar #'mysum L)) )
    )
)