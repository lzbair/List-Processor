(define (empty? lst) (eq? lst '()))
(define (cons-stream a b) (cons a (delay b)))
(define (stream-car stream) (car stream))
(define (stream-cdr stream) (force (cdr stream)))



(define (stream-enumerate low high)
  (if (> low high) 
      '()
	  (cons-stream low (stream-enumerate (+ low 1) high))))  
	  

;Notice that only the first matched element is evaluated (due to cons-stream), and then all the rest is delayed	

(define (stream-filter predicate stream)
  (cond ((empty? stream) '())
        ((predicate (stream-car stream)) (cons-stream (stream-car stream)
                                                  (stream-filter predicate (stream-cdr stream))))
        (else (stream-filter predicate (stream-cdr stream)))))

  
;In contrast, the iterative version is not actually a stream implementation, since all the sequence is evaluated (due to tail recursion) 
(define (stream-filter-iter predicate stream)

(define (filter test in out)
  (cond ((empty? in) out)
        ((test (stream-car in)) (filter test (stream-cdr in) (cons-stream (stream-car in) out)))
        (else (filter test (stream-cdr in) out))))
	  
(filter predicate stream '()))

(define (reduce-iter op initial stream)

(define (accumulate op in out)
    (if ((empty? in) out)
        (accumulate op (stream-cdr in) (op (stream-car in) out))))
		
(if (empty? stream) intial (accumulate op stream initial)))

(define (reduce op initial stream)
  (if (empty? stream) initial
      (op (stream-car stream) (reduce op initial (stream-cdr stream)))))

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
		  

(define (stream-map pro stream) 
  (reduce (lambda (x y) (cons-stream (pro x) y)) 
          '() 
		  stream))