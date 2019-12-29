; all permutation of a linear list

; -> inserts an element on a pozition in a list
(defun inserPoz(L E poz)
    (cond
        ((= 1 poz) (cons E L))
        ((null L) nil)
        (T (cons (car  L) (inserPoz (cdr L) E (- poz 1) )) )
    )
)


;-> inserts an element to every position posible in a list
(defun inserAll(E L K)
    (cond
        ((= K 0) nil)
        (T (cons (inserPoz L E K) (inserAll E L (- k 1)) ) )
    )
)

;-> inserts an element to every position posible in every list from a list of lists
(defun inserPeListe(E L) 
    (cond 
        ((null L) nil)
        (T (append (inserAll E (car L) (+ 1 (length(car L)))) (inserPeListe E (cdr L)) )  )
    )
)

;-> gets all permutations
(defun perm(L)
    (cond
        ((null L) (list nil))
        (T (inserPeListe (car L) (perm (cdr L)) ) )
        
    )
    
)


