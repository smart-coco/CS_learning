(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  (car (cdr s))
)

(define (caddr s)
  (car (cdr (cdr s)))
)


(define (sign num)
  (cond
    ((< num 0) -1)
    ((> num 0) 1) 
    (else 0)
  )
)


(define (square x) (* x x))

(define (pow x y)
  (if (> y 1)
    (if (even? y)
      (pow (square x) (/ y 2))
      (* x (pow (square x) (/ (- y 1) 2)))
    )
    x
  )
)

