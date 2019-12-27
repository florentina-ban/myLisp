; test if a list looks like a valey

(defun valey (L K) 
    (cond
        ((and (null L) (= K 2)) T)
        ((null L) nil)
        ((and (= (length L) 1) (= K 2)) T)
        ((= (length L) 1) nil)
        ((and (< (car L) (cadr L)) (or(= K 1) (= K 2)) ) (valey (cdr L) 2) )
        ((and (< (car L) (cadr L)) (= K 0)) nil )
        ((and (> (car L) (cadr L)) (or(= K 0) (= K 1)) ) (valey (cdr L) 1) )
        ((and (> (car L) (cadr L)) (= K 2)) nil )
    )
)

(defun mainFunc (L)
    (valey  L 0)
)