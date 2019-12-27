; get all the sublists of a list like (including the initial list):
;(sublists '(1 2 (3 (4 5) (6 7)) 8 (9 10)) ) =>  
;( (1 2 (3 (4 5) (6 7)) 8 (9 10)) (3 (4 5) (6 7)) (4 5) (6 7) (9 10) )

(defun sublists(L)
    (cond 
        ((null L) nil)
        ((atom (car L)) (sublists (cdr L) ))
        (T (append (list(car L)) (sublists (car L) ) (sublists (cdr L) ) ))
    )
)

(defun initFunc (L)
    (append (list L) (sublists L))
)