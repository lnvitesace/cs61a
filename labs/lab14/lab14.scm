(define (split-at lst n)
  (define (first lst n)
      (cond ((null? lst) nil)
            ((= n 0) ())
            (else (cons (car lst) (first (cdr lst) (- n 1))))))
    (define (rest lst n)
        (cond ((null? lst) nil)
              ((= n 0) lst)
              (else (rest (cdr lst) (- n 1)))))
          
    (cons (first lst n) (rest lst n))
)


(define (compose-all funcs)
    (lambda (x)
        (if (null? funcs) x
            ((compose-all (cdr funcs)) ((car funcs) x))))
)

