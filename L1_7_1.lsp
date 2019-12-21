; check is a list is linear or not

(defun linear(L)
    (cond
        ((null L) T)
        ((listp (car L)) nil)
        (T (linear (cdr L)))
    )

)