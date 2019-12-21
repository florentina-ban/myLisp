;replace the linear lists with their last element until the main list remains linear
; ex:  (a (b c) (d ((e) f))) ==> (a c ((e) f)) ==> (a c f)


(defun getLast(L)
    (cond 
        ((null (cadr L)) (car L))
        (T (getLast (cdr L)))
    )
)

(defun verifLinear (L)
    (cond
        ((null L) T)
        ((listp (car L)) nil)
        (T (verifLinear (cdr L)))
    )
)

(defun func(L)
    (cond
        ((null L) nil)
        ((atom (car L)) (append (list (car L)) (func (cdr L)) ) )
        ((verifLinear (car L)) (append (list (getLast (car L))) (func (cdr L)) ) )
        (T (cons (func (car L)) (func(cdr L)) ))
    )
)

(defun mainFunc(L)
    (cond 
        ((verifLinear L) L)
        (T (mainFunc (func L)))
    )
)