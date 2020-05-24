(define (abs n)
  (if (positive? n)
    n
    (- n)))

(define (my-square n)
  (* n n))

(define (factorial n)
  (if (= n 0)
    1
    (* n (factorial (- n 1)))))

(define (sum-of-squares a b)
  (+ (my-square a)
    (my-square b)))
    
(define (f a)
  (sum-of-squares
    (+ 1 a) (* 2 a)))
    
    
    
    


; (load "hello.scm")
