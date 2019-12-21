; number of sublists

(defun sublists (L)
    (cond
        ((null L) 1)    ; count the list itself
        ((null (car L)) (+ 1 (sublists (cdr L)))) ;empty list inside
        ((atom (car L)) (sublists (cdr L)))
        (T (+ (sublists (car L)) (sublists (cdr L)) ) ) 
    )
)