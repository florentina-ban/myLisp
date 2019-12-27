; sum of even numbers - sum of odd numbers

(defun par(L)
    (cond
        ((and (atom L) (= (mod L 2) 0)) L)
        ((atom L) 0)
        (T (apply #'+ (mapcar #'par L) ) )            
    )
)


(defun impar(L)
    (cond
        ((and (atom L) (= (mod L 2) 1)) L)
        ((atom L) 0)
        (T (apply #'+ (mapcar #'impar L) ) )
    )
)

(defun mainFunc(L)
    (- (par L) (impar L))
)