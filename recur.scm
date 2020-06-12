#| factorial program
    give, n as a positive integer, 
    n! = n * (n -1) * (n - 2) * ... * 3 * 2 * 1
    n! = n * (n - 1)!  |#
(define (factorial x)
    (if (< x 1) 1 
        (* x (factorial (- x 1)))))

#| fibonacci program
    for some n >= 0
    if n = 0, 0
    if n = 1, 1
    else, fibonacci(n-1)+fibonacci(n-2) |#
(define (fib x)
    (cond ((= x 0) 0)
        ((= x 1) 1)
        (else (+ (fib (- x 1))
                (fib (- x 2))))))


; (load "recur.scm")

