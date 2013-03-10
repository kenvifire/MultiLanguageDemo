;sqrt
(define (sqrt x) (sqrt-iter 1.0 x))

(define (cubic-root x) (cubic-iter 1.0 x))
;cubic-iter
(define (cubic-iter guess x)
	(if(cubic-good? guess x)
		guess
	(cubic-iter (cubic-improve guess x)
		x)))


;sqrt-iter
(define (sqrt-iter guess x)
	(if(good-enough? guess x)
		guess
	(sqrt-iter (improve guess x)
		x)))
;good-enough
(define (good-enough? guess x)
	(< (abs (- (/ (square guess) x) 1 )) 0.001))
;square
(define (square x) (* x x))

;improve
(define (improve guess x)
	(average guess (/ x guess)))

;average
(define (average x y) 
	(/ (+ x y) 2))

;new-if
(define (new-if predicate then-clause else-clause)
	(cond (predicate then-clause)
		(else-clause)))

;cubic improve
(define (cubic-improve guess x)
	(/ (+  (/ x (* guess guess)) (* 2 guess )) 3)	
	)

;cubic-good
(define (cubic-good? guess x)
	(< (abs (- (/ (cubic guess) x) 1 )) 0.001))
;cubic
(define (cubic x) (* x x x))
