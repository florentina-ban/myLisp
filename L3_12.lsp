; replace a node A with anoder node B in a n-ary tree using map functions

;method 1
(defun myRep (L A B)
    (cond
        ((null L) nil)
        ((equal (car L) A) (append (list B) (mapcar #'(lambda (L)
                                                        ( myRep L A B)
                                                        )
                                                    (cdr L)
                                             )
                           )
         )
         
        (T (append (list (car L)) (mapcar #'(lambda (L)
                                        ( myRep L A B)
                                    )
                                    (cdr L)
                          ) 
            )
         )
    )
 )
 
 ; method 2 -> avoiding duplicate code! 
(defun myRepLambda (L A B)
    ( (lambda (V) 
        (cond
            ((null L) nil)
            ((equal (car L) A) (append (list B) V
                               )
             )
             
            (T (append (list (car L)) V 
                )
             )
        )
      )
      (mapcar #'(lambda (X)
                    ( myRepLambda X A B)
              )
              (cdr L)
       )
    )
)
    