; gcd for a linear list

(defun cmmdc(A B)
    (cond 
        ((= A B) A)
        (T (cmmdc B (abs(- A B))))
    )
)

(defun cmmdcLista (L d)
    (cond
        ((null L) d)
        ((symbolp (car L)) (cmmdcLista (cdr L) d))
        ((cmmdcLista (cdr L) (cmmdc(car L) d)))
    )

)

(defun mainFunc (L)
    ((lambda (V)
        (cond 
            ((= V 0) "the list has no numbers")
            (T V)
        )
      )
     (cmmdcLista L 0)
    )
    
)