; f and g one-argument functions
(define (compose f g) (lambda (x) (f (g x))))


; Litteral projection on OOP could be (components should not be aware that they are part of a composite):
;class Composite (F, G) { 
;      execute() { F.execute(G.execute());}
;}


(define (power f n) (cond ((= n 1) f)
                          (else (compose f (power  f (- n 1))))
                     )
)

(println ((power (lambda (x) (+ x 1)) 4) 10))



(define (average a b c) (/ (+ a b c) 3)) ; Could be generalized and wrote in accumulate-style

(define (smooth f) (let ((dx 0.5)) (lambda (x) (average (f (- x dx)) (f x) (f (+ x dx))))))

(println ((smooth (lambda (x) (* x x))) 10))


