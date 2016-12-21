;recursive

(define (fast-expt b n)
(cond ((= n 0) 1)
((even? n) (square (fast-expt b (/ n 2))))
(else (* b (fast-expt b (- n 1))))))


;Iterative
(define (exp* b n a) (cond ((= n 0) a)  
                           ((even? n) (exp* b (/ n 2) (square a)))
						   (else (exp* b (- n 1) (* a b)))))

(define (even? n) (= (remainder n 2) 0))
(define (square x) (* x x))