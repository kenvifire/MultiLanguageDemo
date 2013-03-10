;;
(define (quadric-equation a b c)
	(if (zero? a)
		'error
		(let ((d (-(* b b) (* 4 a c))))
			(if (negative? d)
				'()
				(let ((e (/ b a-2)
					(if (zero? d)
						(list e)
						(let ((f (/(qrt))))))))))))