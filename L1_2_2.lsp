;; checks if an element (E) is found in a nonlinear list L

(defun myFind(L E)
    (cond 
        ((null L) nil)
        ((and (atom (car L))(equal (car L) E)) T)
        ((atom (car L)) (myFind (cdr L) E))
        ((listp (car L)) (or (myFind (car L) E) (myFind (cdr L) E)))
    )
)