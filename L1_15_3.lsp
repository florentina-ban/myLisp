; sort a linear list

(defun mySort (L)
    (cond
        ((null L) nil)
        ((= 1 (length L)) (list (car L)) )
        ((<= (car L) (cadr L)) (cons (car L) (mySort (cdr L))) )
        ((< (cadr L) (car L)) (cons (cadr L) (mySort (cons (car L) (cddr L) ) ) ) )
    )
)

(defun initFunc (L)
    (cond
        ((equal L (mySort L)) L)
        (T (initFunc (mySort L)))
    )
)

