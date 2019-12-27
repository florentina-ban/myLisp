;remove all aparitions of an element in a nonlinear list using map functions

(defun mapRemove(L E)
    (cond
        ((equal L E) nil)
        ((atom L) (list L))
        (T (list(apply #'append (mapcar #'(lambda(L)
                                            (mapRemove L E)                                
                                           ) 
                                    L
                                )           
                )
            )
         )
    )
)
(defun mainF (L E)
    (car (mapRemove L E))
)

