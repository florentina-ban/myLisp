; sum of 2 numbers represented as lists

(defun invers(L col)
    (cond
        ((null L) col)
        (T (invers (cdr L) (cons(car L) col)))
    )
)

(defun ensureLength (L1 len)
    (cond
        ((= (length L1) len) L1)
        ((> (length L1) len) L1)
        ((< (length L1) len) (ensureLength (append L1 (list 0)) len))
    )
)

(defun mySum (L1 L2 tr)
    (cond
        ((and (null L1) (null L2) (= tr 0)) nil)
        ((and (null L1) (null L2)) (list tr))
        (T (cons (mod (+(car L1) (car L2) tr) 10) 
                 (mySum (cdr L1) (cdr L2) (/ (- (+ (car L1) (car L2))
                                                (mod (+(car L1) (car L2)) 10)
                                              ) 10))
            )
        )
    )
)

(defun mainFunc(L1 L2)
    (invers (mySum (ensureLength (invers L1 () ) (max (length L1) (length L2)) ) 
                   (ensureLength (invers L2 () ) (max (length L1) (length L2)) ) 
                    0
            )
            ()
    )
)