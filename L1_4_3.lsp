;reverse the order of the atoms (only the atoms)
; ex: (a b c (d (e f) g h i)) ==> (c b a (d (f e) i h g))

(defun func(L col)
    (cond
        ((null L) col)
        ((atom (car L)) (func (cdr L) (append (list(car L)) col)))
        (T (func () (append col (list(func (car  L) () )) (func (cdr L) ()))))
    )
)

(defun mainF (L)
    (func L ())
)