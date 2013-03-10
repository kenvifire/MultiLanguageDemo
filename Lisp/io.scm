(define (read-file file-name)
  (let ((p (open-input-file file-name)))
    (let loop((ls1 '()) (c (read-char p)))
      (if (eof-object? c)
	  (begin
	    (close-input-port p)
	    (list->string (reverse ls1)))
	  (loop (cons c ls1) (read-char p))))))

;2.2

(define (read-file2 file-name)
	(call-with-input-file file-name
		(lambda (p)
			(let loop((ls1 '()) (c (read-char p)))
				(if (eof-object? c)
					(begin
						(close-input-port p)
						(list->string (reverse ls1)))
					(loop (cons c ls1) (read-char p)))))))

;2.2 
(define (read-file3 file-name)
	(with-input-from-file file-name
		(lambda ()
			(let loop ((ls1 '() ) (c (read-char)))
				(if (eof-object? c)
					(list->string (reverse ls1))
					(loop (cons c ls1) (read-char)))))))
;read
(define (s-read file-name)
	(with-input-from-file file-name
		(lambda ()
			(let loop((ls1 '() ) (s (read)))
				(if (eof-object? s)
					(reverse ls1)
					(loop (cons s ls1) (read)))))))

;exercise 1
(define read-lines file-name)