; sqaure procedure using recursion
(define (square x)
    (* x x))

(define (pow x y)
    (if (= x 0)
        0 
        (if (= y 0) 
            1 
            (* x (pow x (- y 1))))))

(define (abs x)
    (if (< x 0) (- x) x))

(define (goodEnough guess x)
    (<= (abs (- x (square guess))) 0.01))


(define (newGuess guess x)
    (/ (+ guess (/ guess x)) 2))


(define (root guess x)
    (if (goodEnough guess x) guess (root (newGuess guess x) x)))
    

; def sqrt(x):
;     return root(x/2, x)