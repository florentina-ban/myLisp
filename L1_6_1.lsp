; write two times the element on the n-th position on a liniar list

(defun doubleMe(L n)
    (cond
        ((null L) nil)
        ((= n 1) (append (list (car L)) L))
        (T (append (list (car L)) (doubleMe (cdr L) (- n 1))))
    )
)