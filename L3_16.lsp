
;reverse a list using map functions

(defun rev(L col)
    (cond
        ((and (atom L) (null col)) L)
        ((atom L) (cons L col) )
        (T (mapcar #'(lambda(v)
                                  (setq col (cons (rev v ()) col) )
                              ) L
                      ) 
                    col         
        )
    )
)

;reverse a list without map functions
(defun inv(L col)
    (cond
        ((null L) col)
        ((atom (car L)) (inv (cdr L) (cons (car L) col)) )
        (T (inv (cdr L) (cons (inv (car L) () ) col )  ) )
        
    
    
    )
)