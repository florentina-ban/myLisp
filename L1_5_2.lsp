; replace an element(E) with a list(M) on every level of main list (L)

(defun myReplace(L E M)
    (cond
        ((null L) nil)
        ((equal (car L) E) (cons M (myReplace (cdr L) E M)))
        ((atom (car L)) (cons (car L) (myReplace (cdr L) E M)))
        (T (cons (myReplace (car L) E M) (myReplace (cdr L) E M) ))
    )
)