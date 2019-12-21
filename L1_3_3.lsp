;sort a linear list without keeping the vaules that appear more than once
;bubleSort

(defun mysort(L)
    (cond 
        ((null L) nil)
        ((null (cdr L)) (list(car L)))
        ((> (car L) (cadr L))(append (list (cadr L)) (mysort (append (list(car L)) (cddr L)))))
        ((< (car L) (cadr L)) (append (list (car L)) (mysort (cdr L))))
        (T (append (list (car L)) (mysort (cddr L))))
    )
)

(defun mainFunc(L)
    (cond
        ((equal L (mysort L)) L)
        (T (mainFunc (mysort L)))
    )
)