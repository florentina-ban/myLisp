(defun postordine(l)
    (cond
        ((null l) nil)
        (t (append
                (postordine(cadr l))
                (postordine(caddr l))
                (list (car l))
            ))
    )
)