;replace an atom with a list using map functions
; L E3-> lists
; E -> atom

(defun subs(L E E2)
    (cond
        ((equal L E) E2)
        ((atom L) L)
        (T (mapcar #'(lambda (L)
                        (subs L E E2)
                        
                      )
                      L
            )
        )
    )
)