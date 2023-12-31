(define (split-at lst n)
  (define (helper first second n)
    (cond 
      ((null? second) (cons first nil))
      ((> n 0) (helper (append first (list (car second))) (cdr second) (- n 1)))
      (else
        (cons first second)
      )
    )
  )
  (if (> n 0)
    (helper nil lst n)
    (cons nil lst)
  )
)


(define (compose-all funcs)
  (lambda (num)
    (if (null? funcs)
      num
      ((compose-all (cdr funcs)) ((car funcs) num))        
    )
  )
)

