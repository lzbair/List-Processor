; t(n) = t(n-1) + b  --> O(n)
(define (Sum from to) (if (> from to) 0 (+ from (Sum (+ from 1) to))))

; t(n) = 2 t(n-1) --> O(2^n)
(define (Exp-Sum n) (if (< n 1) 1 (+ (Exp-Sum (- n 1)) (Exp-Sum (- n 1)))))

; t(n) = t(n-1) + n --> O(n^2)
(define (Quad-Sum n) (if (< n 1) 1 (+ (Quad-Sum (- n 1)) (Sum 1 n))))

; t(n) = t(n/2) + n --> O(n)
(define (SLog-Descent n) (if (< n 2) 1 (+ (SLog-Descent (/ n 2)) (Sum 1 n))))

; t(n) = t(n/2) + 1 --> O(log(n))
(define (FLog-Descent n) (if (< n 2) 1 (+ 1 (FLog-Descent (/ n 2)))))

; t(n) = 2 t(n/2) + n --> O(nlog(n))
(define (TWay-Log n) (if (< n 2) 1 (+ (TWay-Log (/ n 2)) (TWay-Log (/ n 2)) (Sum 1 n))))

; t(n) = t(sqrt(n)) + 1 --> O(log(log(n)))
(define (F-SRoot-Descent n) (if (< n 2) 1 (+ 1 (F-SRoot-Descent (sqrt n)))))

; t(n) = t(sqrt(n)) + n --> O(n)
(define (S-SRoot-Descent n) (if (< n 2) 1 (+ (S-SRoot-Descent (sqrt n)) (Sum 1 n))))

(define (generate-bin n lst) (if (= n 0) (println lst) 
			                 (begin (generate-bin (- n 1) (cons 1 lst)) (generate-bin (- n 1) (cons 0 lst)))))
