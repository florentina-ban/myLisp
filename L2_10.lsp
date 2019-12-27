;level of a node in a binary tree

(defun level(L E K)
    (cond
        ((null L) 1000)
        ((= E (car L)) K)
        (T (min (level (cadr L) E (+ 1 K)) (level (caddr L) E (+ 1 K)) ) ) 
    )

)