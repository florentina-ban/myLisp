; delete all the aparition of the maximum numerical atom from a nonlinear list
;???????????? try remove '( 1 2(1)) 1)

(defun myRemove(L m)
    (cond
        ((null L) nil)
        ((equal (car L) m) (myRemove (cdr L) m) )
        ((atom (car L)) (cons (car L) (myRemove (cdr L) m) ) )
        (T (append (list (myRemove (car L) m))   (myRemove (cdr L) m) ) )
    )
)