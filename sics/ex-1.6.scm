;Exercise: The good-enough? test used in computing square roots will not be very effective for
;finding the square roots of very small numbers. Also, in real computers, arithmetic operations are almost
;always performed with limited precision. This makes our test inadequate for very large numbers. Explain
;these statements, with examples showing how the test fails for small and large numbers. An alternative
;strategy for implementing good-enough? is to watch how guess changes from one iteration to the
;next and to stop when the change is a very small fraction of the guess. Design a square-root procedure that
;uses this kind of end test. Does this work better for small and large numbers?




; For small numbers: as a worst case, the good-enough? won't be reliable (quick termination)
; For large numbers: as a worst case, the good-enough? could fall in an infinite loop

(define (sqrt-proxy x previous next)
        (if (enough? previous next)
		    next
		    (sqrt-proxy x next (improve next x))))
			
(define (enough? a x) (< (/(abs (- x a)) x) 0.001)) 
; Why x-a/x? short answer: variation definition f(u)-f(v)/u-v => special case : x-a/x-0 

(define (improve a x) (/(+ a (/ x a)) 2))