; sum of 2 vectors

(defun sums(L1 L2)
    (cond
        ((and (null L1) (null L2)) nil)
        ((and (null L1) (not (null L2))) (append (list (car L2)) (sums L1 (cdr L2))))
        ((and (not (null L1)) (null L2)) (append (list (car L1)) (sums(cdr L1) L2)))
        (T (append (list(+ (car L1) (car L2))) (sums (cdr L1) (cdr L2))))
    )
)