;exe 1
;1
(define (abs x)
	( if (> x 0) x
		(- x)))
;2
(define (reciprocal x)
	(if (= x 0 ) #f
		(/ 1 x)))

;condition 1
(define (score n)
	(cond 
		((>= n 80) 'A)
		((<= 60 n 79) 'B)
		((<= 40 n 50) 'C)
		(else 'D)
	))
