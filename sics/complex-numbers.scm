
(define (sum-complex z1 z2) (make-real-imag (+ (real-part z1) (real-part z2)) 
                                            (+ (imag-part z1) (imag-part z2) )))

(define (multiply-complex z1 z2) (make-mag-ang (* (magnitude z1) (magnitude z2)) 
                                               (+ (angle z1) (angle z2))))
											   

											   
(define (make-mag-ang mag ang) (cons mag ang))

(define (make-real-imag real imag) (cons (sqrt (+ (square real) (square imag))) 
                                         (atan imag real)))
											   
(define (magnitude z) (car z))
(define (angle z) (cdr z))

(define (real-part z) (* (magnitude z) 
                         (sin (angle z))))
						 
(define (imag-part z) (* (magnitude z) 
                         (cos (angle z))))