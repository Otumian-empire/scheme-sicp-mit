#| Exercise 2.2: Consider the problem of representing line segments in a plane.
Each segment is represented as a pair of points: a starting point and an ending point. 
Define a constructor make-segment and selectors start-segment and end-segment that define the representation of segments in terms of points.
Further more, a point can be represented as a pair of numbers: the x-coordinate and the y-coordinate.
Accordingly, specify a constructor make-point and selectors x-point and y-point that define this representation.
Finally, using your selectors and constructors, define a procedure midpoint-segment that takes a line segment as argument and returns its midpoint (the point whose coordinates are the average of the coordinates of the endpoints).
To try your procedures, you’ll need a way to print points: 

(define (print-point p)
    (newline)
    (display "(")
    (display (x-point p))
    (display ",")
    (display (y-point p))
    (display ")")) |#


; constructor make-point
(define (make-point xcord ycord)
    (cons xcord ycord))


; selector x-point
(define (x-point p)
    (car p))


; selector y-point
(define (y-point p)
    (cdr p))


(define (midpoint-segment point1 point2)
    ; define the average
    (define (average a b) (/ (+ a b) 2))

    (let ((xcord (average (x-point point1) (x-point point2)))
            (ycord (average (y-point point1) (y-point point2))))
        (make-point xcord ycord)))


(define (print-point p)
    (newline)
    (display "(")
    (display (x-point p))
    (display ", ")
    (display (y-point p))
    (display ")"))


(define (test)
    (define point1 (make-point 1 2))
    (define point2 (make-point 1 4))

    (print-point point1)
    (print-point point2)

    (print-point (midpoint-segment point1 point2)))

; load and call test with no arg
; (load "ex2_2.scm")
; (test )