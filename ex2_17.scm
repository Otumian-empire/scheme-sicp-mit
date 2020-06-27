#| Exercise 2.17: Define a procedure last-pair that returns the list that contains only the last element of a given (nonempty) list:
(last-pair (list 23 72 149 34))
(34) |#

; use the length procedure
(define (last-pair item)
    (if (null? item)
        "nil"
        (if (= (length (cdr item)) 0)
                (car item)
                (last-pair (cdr item)))))


; (load "ex2_17.scm")