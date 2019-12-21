; substitute an element with another ( only at first encounter )

(defun apare (L E)
    (cond
        ((null L) nil)
        ((equal (car L) E) T)
        ((atom (car L)) (apare (cdr L) E))
        (T (or (apare (car L) E) (apare (cdr L) E)))
    )
)

(defun func(L E S)
    (cond 
    ((null L) nil)
    ((equal (car L) E) (append (list S) (cdr L)))
    ((atom (car L)) () )
    ((apare(car L) E) (cons (func (car L) E S) (cdr L) ))
    (T (append (list (car L)) (func (cdr L) E S)))
    )
)