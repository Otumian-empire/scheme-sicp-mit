#| Exercise2.18: Define a procedure reverse, that takes a list as argument and returns a list of the same elements in reverse order:
(reverse (list 1 4 9 16 25))
(25 16 9 4 1) |#

(define (reverse item)
    (if (null? item)
        "Item is null"
        ((define rl (list ))
            if (> (length item) 0)
                ((append rl (car item))
                    (reverse (cdr item)))
                rl)))

; (load "ex2_18.scm")