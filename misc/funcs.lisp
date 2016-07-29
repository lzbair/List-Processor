(define (empty list) (eq? list '()))
(define (nempty list) (not (empty list)))

(define (rev&conc list1 list2 out)(cond ((nempty? list1) (rev&conc (cdr list1) list2 (cons (car list1) out)))
                                        ((nempty? list2) (rev&conc list1 (cdr list2) (cons (car list2) out)))
                                        (else out)))