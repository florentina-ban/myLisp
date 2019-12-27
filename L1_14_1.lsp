;remove element by a step (N) in a linear list

(defun myRemove (L poz N)
    (cond
        ((null L) nil)
        ((= poz N) (myRemove (cdr L) 1 N))
        (T (cons (car L) (myRemove (cdr L) (+ 1 poz) N) ))
    )
)

(defun mainfunc (L N) 
    (myRemove L 1 N)
)