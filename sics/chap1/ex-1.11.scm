;A function f is defined by the rule that f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n -3) if n> 3. 
;Write a procedure that computes f by means of a recursive process. 
;Write a procedure that computes f by means of an iterative process.

(define (F n) (cond ((< n 3) n)
                    (else (+ (+ (F (- n 1)) (* 2 (F (- n 2)))) (* 3 (F (- n 3)))))                                  
			  )
)

(define (F* n a b sum) (cond 
							 ((< n 3) (+ sum n))
                             (else (F* (- n 1) b sum (+ (+ sum (* 2 b)) (* 3 a))))
					   )

)

(F* 3 2 1 )
(F* 2 2 )