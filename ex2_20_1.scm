#| Use this notation to write a procedure same-parity that takes one or more integers and returns a list of all the arguments that have the same even-odd parity as the first argument.
For example:
(same-parity 1 2 3 4 5 6 7)
(1 3 5 7)

(same-parity 2 3 4 5 6 7)
(2 4 6) 

(define (same-parity item)
    
    (if (not (null? item))
        (let (( r (remainder (car item) 2)))
        
        (append l (car item))
        
        (define (iter ritem)
            (if (not (null? ritem))
                (if (= r (remainder (car ritem)))
                    ((append l (car ritem))
                        (iter (cdr ritem))))))
        (iter (cdr item))))
     
    l)
|#


(define (same-parity  item)
    (define rl (list ))
    
    (define (iter s)
        (if (not (null? s))            
            (if (> (length s) 0)
                ((append rl (car s))
                    (iter (cdr s)))
            rl)))
   
    (iter (cdr item)))
    
    
    
; (load "ex2_20_1.scm")
; (same-parity (list 1 2 3 4 5 6 7 8 9 10))
