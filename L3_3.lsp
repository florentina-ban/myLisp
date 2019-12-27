; find an element in a nonlinear list with map function

(defun sau (L)  ; -> redefining or function because or is not an actual function
    (cond
        ((null L) nil)
        ((and (atom (car L)) (car L)) T)
        ((atom (car L)) (sau (cdr  L)))
        (T (or (sau(car L)) (sau(cdr L) )))
    )
)

(defun findFunc(L E)
    (cond
        ((equal L E) T)
        ((atom L) nil)
        (T (apply #'sau (list (mapcar #'(lambda (L)
                                    (findFunc L E)
                                  )
                                  L
                                  
                               )
                        )
            )
        )
    )
)