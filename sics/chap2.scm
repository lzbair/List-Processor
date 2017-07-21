(define (last-pair lst) ())

(define (right x y) x)



(define (accumulate ** identity lst) 
        (cond ((null? lst) identity)
	          (else (** (car lst) (accumulate + identity (cdr lst)))) 
	    )
)

;deep reverse
(define (reverse lst ans) (cond ((null? lst) ans)
                                ((not (pair? lst)) lst)
                                (else (reverse (cdr lst) (cons (reverse(car lst) '()) ans)))))


