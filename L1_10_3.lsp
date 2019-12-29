;calculate an expresion in preorder
; ex: (+ * 2 4 3) -> 11

(defun val(L)
    (cond
        ((null L) nil)
        ((< (length L) 3) L)
        ((and (symbolp (car L)) (numberp (cadr L)) (numberp (caddr L)) ) 
                (cons (eval (list (car L) (cadr L) (caddr L)) )
                        (cdddr L)
                 )
             
        )
        (T (cons (car L) (val (cdr L))))
    
    )
)

(defun rec(L)
    (cond 
        ((= 1 (length (val L))) (car(val L)))
        (T (rec (val L) ))
    )
    
)