;nuber of nodes on level K in a n-ary tree (map functions)

(defun nodes(L K)
    (cond
        ((= K 0) (car L) )
        (T (mapcar #'(lambda(V) 
                            (nodes V (- K 1))
                      ) (cdr L)
            )
        )
    )
)