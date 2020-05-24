; Exercise 1.3.
; Define a procedure that takes three numbers as arguments
; and returns the sum of the squares of the two larger numbers.

; define square
(define (square x) (* x x))

;define sum-of-square
(define (sum-of-square x y) (+ (square x) (square y)))

(define (sum-of-square-max-2 a b c)
	(cond
		((and (>= a c) (>= b c)) (sum-of-square a b))
		((and (>= a b) (>= c b)) (sum-of-square a c))
		(else (sum-of-square b c))
	)
)

(define (test)
; (load "ex1_3.scm")
;  (sum-of-square-max-2 1 2 3) ; -> 13
;  (sum-of-square-max-2 1 3 2) ; -> 13
;  (sum-of-square-max-2 2 1 3) ; -> 13
;  (sum-of-square-max-2 2 3 1) ; -> 13
;  (sum-of-square-max-2 3 1 2) ; -> 13
;  (sum-of-square-max-2 3 2 1) ; -> 13
)