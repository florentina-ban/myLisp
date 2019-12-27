(defun i(L)
    (cond
        ((null L) nil)
        ((atom (car L)) (append (i (cdr L)) (list (car L))) )
        (T (list (car (i (cdr L))) (i (car L)) ) )
    )
)