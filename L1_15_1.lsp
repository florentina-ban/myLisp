;reunion of 2 sets

(defun searchFor (L E)
    (cond
        ((null L) nil)
        ((= (car L) E) T)
        (T (searchFor (cdr L) E))
    )
)

(defun reunion (L M)
    (cond
        ((null L) nil)
        ((searchFor M (car L)) (cons (car L) (reunion (cdr L) M)) )
        (T (reunion (cdr L) M) )
    )
)