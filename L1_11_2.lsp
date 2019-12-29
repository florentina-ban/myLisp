; check is a linear list looks like a mountain

(defun mountain(L w)
    (cond 
        ((and (= (length L) 1) (= w 2)) T)
        ((= (length L) 1) nil)
        ((and (< (car L) (cadr L) ) (= w 2)) nil )
        ((< (car L) (cadr L)) (mountain (cdr L) 1) )
        ((and (> (car L) (cadr L) ) (= W 0)) nil )
        ((> (car L) (cadr L)) (mountain (cdr L) 2) )

    )
)

(defun mainF (L)
    (mountain L 0)
)