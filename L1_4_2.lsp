; list of atoms, maintaining the order

(defun getAtoms(L)
    (cond
        ((null L) nil)  ;end of the list
        ((null (car L)) (getAtoms (cdr L)))  ; empty list inside the list
        ((atom (car L)) (append(list(car L)) (getAtoms (cdr L))))
        (T (append(getAtoms (car L)) (getAtoms (cdr L))))
    )
)