;Exercise: Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is
;using applicative-order evaluation or normal-order evaluation. He defines the following two procedures:
(define (p) (p))
(define (test x y) (if (= x 0) 0 y))

;Then he evaluates the expression
;(test 0 (p))

;What behavior will Ben observe with an interpreter that uses applicative-order evaluation? What behavior
;will he observe with an interpreter that uses normal-order evaluation? Explain your answer. (Assume that
;the evaluation rule for the special form if is the same whether the interpreter is using normal or
;applicative order: The predicate expression is evaluated first, and the result determines whether to evaluate
;the consequent or the alternative expression.)


;Solution: 
;If the interpreter use applied-order then the operand will be evaluated first. Thus, a cyclic flow (runtime error) will 
;occur when (p) is evaluated.

;If the interprter use normal-order, the program will be expand first without evaluating operands.
; Since the (= 0 0) is true, only the consequance will be evaluated (not alternative). Hens, the result should be 0.
