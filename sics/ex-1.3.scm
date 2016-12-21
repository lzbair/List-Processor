;Exercise: Observe that our model of evaluation allows for combinations whose operators are
;compound expressions. Use this observation to describe the behavior of the following procedure.

(define (a-plus-abs-b a b) ((if (> b 0) + -) a b))

;Solution notice that both Normal-order and Applied-order substitution models lead to the same tree
2 + |-3| = (a-plus-abs-b 2  -3)

(a-plus-abs-b 2  -3)
((if (> -3 0) + -) 2 -3)
(- 2 -3)
5


