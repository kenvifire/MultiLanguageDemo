;A
(define (A x y)
	(cond ((= y 0 ) 0)
		  ((= x 0 ) (* 2 y))
		  ((= y 1) 2)
		  (else (A (- x 1)
		  	(A x (- y 1)))) 
		  ))
;fn
(define (f n)( A 0 n))
;gn
(define (g n ) (A 1 n))
;hn
(define (h n ) (A 2 n))
;kn
(define (k n ) (* 5 n n))

;f
(define (f n)
	(if (< n 3)
		n
		(+
			(f (- n 1))
			(* 2 (f (- n 2)))
			(* 3 (f (- n 3)))
			 )))

;iter-f
(define (iter-f a b c i n)
	(if (= n i) 
		c
		(iter-f (+ a (* 2 b) (* 3 c))
			a
			b
			(+ i 1)
			n)
		))
;iter-fn
(define (iter-fn n)
	(iter-f 2 1 0 0 n))

;pascal-triangle
(define (pascal m n)
	(cond ((= n 0) 1)
			((= m n) 1)
		(else(+ (pascal (- m 1) n) (pascal (- m 1) (- n 1)))))
	)