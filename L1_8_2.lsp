; get the successor  of a number represented as a list

(defun invers (L col)
    (cond 
        ((null L) col)
        (T (invers (cdr L) (append (list(car L)) col)) )
    )
)

(defun successor(L tr)
    (cond 
        ((and (null L) (= tr 1)) (list tr))
        ((null L) nil)
        (T (append (list (mod (+ (car L) tr) 10))
                   (successor (cdr L) (/ (- (+ (car L) tr) (mod (+ (car L) tr) 10)) 10))))
    )
)

(defun mainFunc(L)
    (
     invers (successor (invers L ()) 1 ) () 
    )
)