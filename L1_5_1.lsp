;merge 2 sorted list

(defun myMerge(L1 L2)
    (cond
        ((null L1) L2)
        ((null L2) L1)
        ((< (car L1) (car L2)) (append (list (car L1)) (myMerge (cdr L1) L2)))
        (T (append (list (car L2)) (myMerge L1 (cdr L2))))
    )
)