(define (empty? lst) (eq? lst '()))
(define (cons-stream a b) (cons a (delay b)))
(define (stream-car stream) (car stream))
(define (stream-cdr stream) (force (cdr stream)))

(define (stream-enumerate low high)
  (if (> low high) 
      '()
	  (cons-stream low (stream-enumerate (+ low 1) high))))  
	  
	  
(define (stream-filter predicate stream)

(define (filter test in out)
  (cond ((empty? in) out)
        ((test (stream-car in)) (filter test (stream-cdr in) (cons-stream (stream-car in) out)))
        (else (filter test (stream-cdr in) out))))
	  
(filter predicate stream '()))

(define (reduce op initial stream)

(define (accumulate op in out)
    (if ((empty? in) out)
        (accumulate op (stream-cdr in) (op (stream-car in) out))))
		
(if (empty? stream) intial (accumulate op stream initial)))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        (( divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))
  
(define (prime? n)
  (= n (smallest-divisor n)))



(define (sum-prime a b) 
  (reduce + 
          0 
	      (stream-filter prime? (stream-enumerate a b))))