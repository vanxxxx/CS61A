(define (curry-cook formals body) 
  (cond 
    ((null? (cdr formals)) (list `lambda (list(car formals)) body ))
    (else (list `lambda (list(car formals)) (curry-cook (cdr formals ) body)))
  )
  )

(define (curry-consume curry args)
  (if (null? args)  
    curry
    (curry-consume (curry (car args)) (cdr args))
  ))

(define-macro (switch expr options)
  (switch-to-cond (list 'switch expr options)))

(define (switch-to-cond switch-expr)
  (cons _________
        (map (lambda (option)
               (cons _______________ (cdr option)))
             (car (cdr (cdr switch-expr))))))
