;get the list of nodes from the root to one specific node (e)

(defun apare(E L)
    (cond
        ((equal E L) 1)
        ((numberp L) 0)
        (T (apply #'+ (mapcar #'(lambda (v) 
                                   (apare E v) 
                                )
                                L
                       ) 
            )
        )
    )
) 

(defun myWay (arb e)
    (cond 
        ((equal(car arb) e) (list (car arb)) )
        ((> (apare e (cadr arb)) 0) (append (list (car arb)) (myWay (cadr arb) e) ) )
        ((> (apare e (caddr arb)) 0) (append (list (car arb)) (myWay (caddr arb) e) ) )
        (T nil)
    )
)