; list of all atoms of a nonlinear list
;(((A B) C) (D E)) --> (A B C D E)

(defun func(L)
    (cond
        ((null L) nil)      ; if there is an empty list inside
        ((atom L) (list L) )
        (T (mapcan #'func L))
    )
)