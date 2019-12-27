; the greatest number in a nonlinear list -> using map functions

(defun maxFunc(L)
    (cond
        ((numberp L) L)
        ((symbolp L) -1000)
        (T (apply #'max (mapcar #'maxFunc L)))
    )
)