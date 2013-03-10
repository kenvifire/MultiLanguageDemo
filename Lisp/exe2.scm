;1
(define pi (* 4 (atan 1.0)))
(define dpr (/ (* 2 pi) 360))
(define (ang2rad ang) (* dpr ang))

;2
(define (vt v t) (* v t))

;3
(define g 9.8)
(define dura(vy) (/ (* 2 vy) g))

;4
(define duration(v,theta) (dura(* v ())))