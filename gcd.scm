#| Euclid’s Algorithm - GCD
The idea of the algorithm is based on the observation that, if r is the remainder when a is divided by b, then the common divisors of a and b are precisely the same as the common divisors of b and r |#

(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))

(define (test a b t)
    (if (= (gcd a b) t) "pass" "fail"))

; (load "gcd.scm")