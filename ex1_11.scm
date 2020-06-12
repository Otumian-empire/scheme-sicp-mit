#| Write the function for f, defined by the rule that
f(n) =  n if n < 3 but f(n-1) + 2f(n-2) + 3f(n-3) if n >= 3 |#

(define (f n)
    (if (< n 3) n
        (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

(define (test n a)
    (if (= a (f n)) "pass" "fail"))

; (load "ex1_11.scm")