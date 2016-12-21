;Exercise: Define a procedure that takes three numbers as arguments and returns the sum of the
;squares of the two larger numbers.

(define (SQ x) (* x x))

;Solution1
(define (SUM_TWO_LARGEST  x y z) (- (+ (SQ x) (SQ y) (SQ z))  (SQ (min x y z)))

;Solution2 [usage: (TWO_LARGEST SQ + 2 5 3) --> 34]
(define (FMAX x y z) (max x y z))
(define (SMAX x y z) (min (max x y) (max y z) (max z x)))


(define (TWO_LARGEST MAPPER REDUCTION x y z)(REDUCTION (MAPPER (FMAX x y z)) (MAPPER (SMAX x y z))))
