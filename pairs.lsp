;all pairs al atoms in a list

(defun p (L)
    (mapcan #'(lambda (e1)
                 (mapcar #'(lambda (e2)
                                (list e1 e2)
                          )   
                            L
                  )
               )
                L
    )
) 