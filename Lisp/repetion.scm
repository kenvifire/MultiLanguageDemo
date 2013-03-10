;1
(define (my-length ls)
  (if (null? ls)
      0
      (+ 1 (my-length (cdr ls)))))

;2
(define (my-reverse ls)
	(my-reverse-tail () ls))
(define (my-reverse-tail result ls)
	(if (null? ls) result
		(my-reverse-tail (cons result (car ls) (cdr ls))))
	)