#| Exponential function using recursion
Calculate exponent
Given the base b, and and a positive integer n
computes b raised to the exponent n
recurviely,
  b^n = b * b^(b-1)
  b^0 = 1 |#
(define (expo b n)
  (if (= n 0)
    1
    (* b (expo b (- n 1)))))

(define (test b n a)
  (if (= (expo b n) a) "pass" "fail"))

; (load "exponential.scm")