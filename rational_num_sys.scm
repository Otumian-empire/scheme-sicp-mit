#| design a system that performs arithmetic with rational numbers
this system must be able to add, subtract, multipy, divide and check the equality of rational numbers
|#

; return the numerator of a given rational number
(define  (numrat r)
    (car r))

; return the denominator of a given rational number 
(define  (denumrat r)
    (cdr r))

; return a rational number of 2 given numbers as the numerator and 
; the denominator
(define  (makerat n  d)
    (define g (gcd n d))
    (cons (/ n g) (/ d g)))

; add rational numbers
(define (addrat x y)
    (let ((n (+ ( * (numrat x)
                 (denumrat y))
                (* (denumrat x) (numrat y))))
            (d (* (denumrat x) (denumrat ))))
        (makerat n d)))
