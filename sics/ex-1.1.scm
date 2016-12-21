;Exercise: Below is a sequence of expressions. What is the result printed by the interpreter in response 
;to each expression? Assume that the sequence is to be evaluated in the order in which it is presented.

(print 10)
(print (+ 5 3 4))
(print (- 9 1))
(print (/ 6 2))
(print (+ (* 2 4) (- 4 6)))
(eval '(define a 3))
(eval '(define b (+ a 1)))
(print (+ a b (* a b)))
(print (= a b))
(print (if (and (> b a) (< b (* a b)))
    b
    a))
(print (cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25)))
(print (+ 2 (if (> b a) b a)))
(print (* (cond ((> a b) a)
   ((< a b) b)
   (else -1))
   (+ a 1)))
 
;Solution: 
;10
;12
;8
;3
;6
;a
;b
;19
;#f
;4
;16
;6
;16
