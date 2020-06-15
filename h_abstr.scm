; write a procedure for f(x, y)= x(1+xy)^2 + y(1-y) + (1+xy)(1-y)

; f(x, y)= x(1+xy)^2 + y(1-y) + (1+xy)(1-y)

; a = (1 + xy)
; b = (1 - y)

; f-?(a, b) = xa^2 + yb + ab

(define (f x y)
    (define a (+ 1 (* x y)))
    (define b (- 1 y))
    (+ (* x (square a))
        (* y b)
        (* a b)))
        
; write a procedure for f(x, y)= x(1+xy)^2 + y(1-y) + (1+xy)(1-y)
; f(x, y)= x(1+xy)^2 + y(1-y) + (1+xy)(1-y)
; a = (1 + xy)
; b = (1 - y)
; f-?(a, b) = xa^2 + yb + ab

(define (f x y)
    (define (fg a b) 
        (+ (* x (square a))
            (* y b)
            (* a b)))
            
    (fg (+ 1 (* x y))
        (- 1 y)))
        

; the square program
; different approach using lambda then let
(define (square x) (* x x))

(define (square x) (define s (* x x)) s)

(define (square x) ((lambda (x) (* x x)) x))
    
(define (square x) (let ((s (* x x))) s))




