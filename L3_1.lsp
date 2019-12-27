;depth of a list

(defun dep(L)
    (cond 
        ((atom L) 0)
        (T (+ 1 (apply #'max (mapcar #'dep L) )))
    )
)