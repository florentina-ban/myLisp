; all the list components of a nonlinear list (without the list itself)

(defun sublist(L)
    (cond
        ((atom L) nil)
        (T (cons L (apply #'append (mapcar #'sublist L) )) )
    )
)

(defun mainFunc(L)
    (apply #'append (mapcar #'sublist L) )
)