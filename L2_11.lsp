; get the level with maximum number of nodes

;all nodes on level k
(defun allNodes (arb K)
    (cond
        ((null arb) nil)
        ((= K 0) (list(car arb)) )
        (T (append (allNodes (cadr arb) (- K 1)) (allNodes (caddr arb) (- K 1) ) ) )
    )
)


;maximum number of nodes
(defun levelMax (arb niv nrMax noduri)
    (cond
        ((= niv -1) noduri)
        ((> (length(allNodes arb (- niv 1))) nrMax) 
            (levelMax arb (- niv 1) (length(allNodes arb (- niv 1))) (allNodes arb (- niv 1)) ) )  
        (T (levelMax arb (- niv 1) nrMax noduri) ) 
    )
)
; with lambda function
(defun levelMaxLambda (arb niv nrMax noduri)
    ( (lambda (L)
         (cond
            ((= niv -1) noduri)
            ((> (length L) nrMax) 
                (levelMaxLambda arb (- niv 1) (length L) L ) )  
            (T (levelMaxLambda arb (- niv 1) nrMax noduri) ) 
         )
       )
       (allNodes arb (- niv 1))
    )
)