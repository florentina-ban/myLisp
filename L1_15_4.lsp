; position of minimal element in a linear list

(defun getPoz(L Min col poz)
    (cond 
        ((null L) col)
        ((and (numberp (car L)) (equal (car L) Min)) (getPoz (cdr L) Min (append col (list poz)) (+ 1 poz) ) )
        ((and (numberp (car L)) (< (car L) Min)) (getPoz (cdr L) (car L) (list poz) (+ 1 poz) ) )
        (T (getPoz (cdr L) Min col (+ 1 poz)) )
    )
)

(defun initFunc (L poz)
    (cond 
        ((null L) "no numbers in the list")
        ((numberp (car L) ) (getPoz L (car L) () poz))
        ((symbolp (car L) ) (initFunc (cdr L) (+ 1 poz)) )
    )
)

(defun mainFunc(L)
    (initFunc L 1)
)