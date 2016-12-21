; The complex way: mix concerns (accumulate doses much more than what it's supposed to do)
(define (accumulate COMBINER MAPPER NEXT identity a b) 
        (cond ((< b a) identity)
	          (else (COMBINER (MAPPER a) (accumulate COMBINER MAPPER NEXT identity (NEXT a) b))) 
	    )
)


; Other relevant way:  accumulate only knows about accumulating (combiner) of given values 
(accumulate + (map sqrt (generate from to)))
