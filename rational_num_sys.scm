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

; patterned procedure
(define (pattern-proc proc x y)
    (let ((n (proc 
                ( * (numrat x) (denumrat y))
                (* (denumrat x) (numrat y))))
            (d (* (denumrat x) (denumrat ))))

        (makerat n d)))

; add rational numbers
(define (addrat x y)
    (pattern-proc + x y))

; subtracts rational numbers
(define (subrat x y)
    (pattern-proc - x y))

; multiplies rational numbers
(define (mulrat x y)
    (makerat (* (numrat x)
                (numrat y))
            (* (denumrat x)
                (denumrat y))))

; divides rational numbers
(define (divrat x y)
    (makerat (* (numrat x)
                (denumrat y))
            (* (denumrat x)
                (numrat y))))

; check for equality of rational numbers
(define (eqrat x y)
    (= (* (numrat x) (denumrat y))
        (* (denumrat x) (numrat y))))

; prints a given rational number
(define (printrat r)
    (newline)
    (display (numrat r))
    (display "/")
    (display (denumrat r))
    nil)  ; let it return nil


; (load "rational_num_sys.scm")
(define half (makerat 1 2))
(define third (makerat 1 3))
