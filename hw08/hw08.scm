(define (ascending? s) 
  (if (or (null? s) (null? (cdr s))) #t
    (if (>= (car(cdr s)) (car s) )
      (ascending? (cdr s))
      #f
      )
  ))

(define (my-filter pred s) 
  (if (null? s) s
    (if (pred (car s)) (cons (car s) (my-filter pred (cdr s))) 
      (my-filter pred (cdr s)))
  ))

(define (interleave lst1 lst2) 
  (if (null? lst1) lst2 (cons (car lst1) (interleave lst2 (cdr lst1))) ) 
  )

(define (no-repeats s) 'YOUR-CODE-HERE)
