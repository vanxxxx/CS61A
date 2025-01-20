(define (ascending? s) 
  (if (or (null? s) (null? (cdr s))) #t
    (if (>= (car(cdr s)) (car s) )
      (ascending? (cdr s))
      #f
      )
  ))

(define (my-filter pred s) 'YOUR-CODE-HERE)

(define (interleave lst1 lst2) 'YOUR-CODE-HERE)

(define (no-repeats s) 'YOUR-CODE-HERE)
