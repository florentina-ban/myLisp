; D -> de cate ori apare un elem intr-o lista
(defun apare(e L)
    (cond
        ((null L) 0)
        ((and (numberp (car L)) (equal e (car L))) (+ 1 (apare e (cdr L))))
        ((atom (car L)) (apare e (cdr L)))
        (T (+ (apare e (car L)) (apare e (cdr L))))
    )
)

; B -> inversati o lista neliniara
(defun lista (l col)
    (cond
        ((null l) col)
        ((and(atom (car l))(not (null (car l))))(lista (cdr l) (cons (car L) col)))
        (T (lista (cdr l) (append (lista (car l) ()) col)))
    )
)
(defun lista_aux (l)
    (cond
        (T (lista l ()))
    )
)

;C -> cmmdc drintr-o lista neliniara
(defun cmmdc(a b)
    (cond
        ((= b 0) a)
        (T (cmmdc b (abs (- a b))))
    )
)
(defun init (L)
    (cond
        ((numberp (car L)) (cmmdcLista (cdr L) (car L)))
        (T (init (append (car L) (cdr L))))
    )
)

(defun cmmdcLista(L nr)
    (cond
        ((null L) nr)
        ((numberp (car L)) (cmmdcLista (cdr L) (cmmdc (car L) nr)))
        ( T (cmmdcLista (append (car L) (cdr L)) nr))
    )
)
;A -> adauga un element dat dupa elementul nr 2, nr 4, n6 ... al unei liste liniare
(defun adauga(L E k poz)
    (cond
        ((null L) ())
        ((< k poz) (cons (car L) (adauga (cdr L) E (+ k 1) poz)))
        (T (cons (car L) (cons E (adauga(cdr L) E (+ k 1) (+ poz 2)))))
    )
)
(defun adauga_init(L E)
        (cond
            (T (adauga L E 1 2))
        )
)