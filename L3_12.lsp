;substitute one element with another using map functions

(defun mySubstitute(L E1 E2)
    (cond
        ((equal L E1) E2)
        ((atom L) L)
        (T (mapcar #'(lambda(V)
                           (mySubstitute V E1 E2) 
                      )
                      L
            )
        )
    )

)