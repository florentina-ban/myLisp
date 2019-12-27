; put element E on pozition n in a linear list

(defun insert(L E K poz)
    (cond
        ((null L) nil)
        ((= K poz) (cons E L) )
        (T (cons (car L)(insert (cdr L) E K (+ 1 poz))) )
    )
)

(defun mainFunc(L E K)
    (insert L E K 1)
)