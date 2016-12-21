(define (compose f g) (lambda (x) (f (g x))))


f(x, y, z) = xy + yz + xz 

(define (f x) (lambda (y, z) (lambda (z) (+ x y z))))

f(x, y, z) = g(y,z) 

g(y,z) = x*

g(x) = xy + yz + xz 
g(2) = 2y + yz + 2z 

l(y) =  2y + yz + 2z 

f = g(h(l())

