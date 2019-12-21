; all atoms of a nonlinear list - >set 
; (1 2 (1) 4 (3 2))  -> (1 2 4 3)

(defun modif(L E)
    (cond 
        ((null L) nil)
        ((equal (car L) E) (modif (cdr L) E))
        ((atom (car L)) (cons (car L) (modif (cdr L) E)))
        (T (append(modif (car L) E) (modif (cdr L) E)))
    )
)

(defun mainFunc (L col)
    (cond
        ((null L) col)
        ((listp (car L)) (mainFunc (cdr L) (append col (mainFunc (car L) ()))))
        (T (mainFunc (modif (cdr L) (car L)) (append col (list (car L)))))
    )
)