; Goal: Check if n is prime
; Fermat test: 
;             pick any number x so that x<n  
;             if a^x % n != x then n is not prime  
; NEXT: generates next candidate value for x
; STOP: when the generation of candidates should stop


(define (fermat n x NEXT STOP) (cond ((not (= (modulo (expt x n) n) x)) #f )
                                     ((STOP x)  #t)
                                     (else  (fermat n (NEXT x)))
					 ))
					 
					 
					 
					 
					 