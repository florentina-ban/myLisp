; lengh of a list is even? (on the first level) 

(defun f(L)
    (cond
        ((= (mod (length L) 2) 0) T)
        (T nil)
    )
)