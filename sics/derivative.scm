(define (derivExp EXP var) (cond ((const? EXP var) 0)
                                   ((same? EXP var) 1)
								   ((sum? EXP) (sumExp (derivExp (part1 EXP) var) (derivExp (part2 EXP) var)) )
								   ((multiply? EXP) (sumExp (multiplyExp (derivExp (part1 EXP) var) (part2 EXP)) (multiplyExp (part1 EXP) (derivExp (part2 EXP) var))))
								   
                             )
)

(define (atom? EXP) (not (or (pair? EXP) (null? EXP))))
(define (const? EXP var) (and (atom? EXP) (not (eq? EXP var))))
(define (same? EXP var) (and (atom? EXP) (eq? EXP var)))
(define  (sum? EXP) (and (not (atom? EXP)) (eq? (car EXP) '+)))
(define  (multiply? EXP) (and (not (atom? EXP)) (eq? (car EXP) '*)))
(define (part1 EXP) (cadr EXP))
(define (part2 EXP) (caddr EXP))
(define (sumExp e1 e2) (list '+ e1 e2))
(define (multiplyExp e1 e2) (list'* e1 e2))

(define (derivative EXP var) (display (derivExp EXP var)))

(derivative (list '* 2 'x) 'x)