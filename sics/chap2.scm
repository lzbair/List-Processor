(define (last-pair lst) ())

(define (right x y) x)



(define (accumulate ** identity lst) 
        (cond ((null? lst) identity)
	          (else (** (car lst) (accumulate + identity (cdr lst)))) 
	    )
)


