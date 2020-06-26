#| Exercise 2.3: Implement a representation for rectangles in a plane.
(Hint: You may want to make use of Exercise 2.2.)
Interms of your constructors and selectors, create procedures that compute the perimeter and the area of a given rectangle.
Now implement a different representation for rectangles.
Can you design your system with suitable abstraction barriers, so that the same perimeter and area procedures will work using either representation? |#


(define (x-cord point)
    (car point))

(define (y-cord point)
    (cdr point))

(define (distance point-a point-b)
    ; dist = sqrt((dx)^2 + (dy)^2)
    (define dx (- (x-cord point-a) (x-cord point-b)))
    (define dy (- (y-cord point-a) (y-cord point-b)))
    
    (abs (sqrt (+ (square dx) (square dy)))))

(define (perimeter length breadth)
    (+ (* 2 length) (* 2 breadth)))

(define (area length breadth)
    (* length breadth))
    
    
    
; lets assume that the rectangle is at the origin
; 5 units above the x-axis and 4 units away from the y-axis
; (0, 0),  (0, 5) and (4, 0)

(define (test )
    (define O (cons 0 0))
    (define OY (cons 0 5))
    (define OX (cons 4 0))

    ; distance from Origin to the y-axis and x-axis
    (define dist-y (distance O OY))
    (define dist-x (distance O OX))

    (define perimeter-of-rect (perimeter dist-x dist-y))
    (define area-of-rect (area dist-x dist-y))

    (newline)
    (display "The perimeter of the rectance is ")
    (display perimeter-of-rect)

    (newline)
    (display "The area of the rectance is ")
    (display area-of-rect))

; (load "ex2_3.scm")

