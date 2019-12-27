;minimal value from a nonlinear list

; 1->without map functions

(defun myMin (L m)
    (cond
        ((null L) m)
        ((and (numberp (car L)) (< (car L) m)) (myMin (cdr L) (car L)) )
        ((listp (car L)) (min (myMin (car  L) m) (myMin (cdr L) m)) )
        (T (myMin (cdr L) m))
    )
)

(defun mainFunc (L)
    (cond
        ((numberp (car L)) (myMin (cdr L) (car L)) )
        ((atom (car L)) (mainFunc (cdr L)) )
        (T (mainFunc (append (car  L) (cdr L)) ) )
    )
)

; 2-> with map functions

(defun MapMin(L)
    (cond
        ((numberp L) L)
        ((atom  L) 1000)
        (T (apply #'min (mapcar #'MapMin L) ))
    )
)