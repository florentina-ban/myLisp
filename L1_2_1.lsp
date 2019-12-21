;; returns the n-th element in list L

(defun getElement(L n)
    (cond
        ((null L) nil)
        ((= n 1) (car L))
        (T (getElement (cdr L) (- n 1)))
    )
)