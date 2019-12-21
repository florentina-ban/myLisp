;transform a linear list in a set

;A -> the elements are now in a different order 

(defun auxFunc(L E)
    (cond
        ((null L) nil)
        ((equal (car L) E) T)
        (T (auxFunc (cdr L) E))
    )
)

(defun transform(L col)
    (cond
        ((null L) col)
        ((auxFunc (cdr L) (car L)) (transform (cdr L) col))
        (T (transform (cdr L) (append col (list(car L)))))
    )
)

(defun mainFunc(L)
    (transform L ())
)

;B -> the elements keep the original order

(defun auxFunc2(L E col)
    (cond
        ((null L) col)
        ((equal (car L) E) (auxFunc2 (cdr L) E col))
        (T (auxFunc2 (cdr L) E (append col (list (car L)))))
    )
)
(defun transform2(L col)
    (cond
        ((null L) col)
        (T (transform2 (auxFunc2 (cdr L) (car L) () ) (append col (list (car L)))))
    )
)
(defun mainFunc2(L)
    (transform2 L ())
)