#lang racket

;exp1.11 p27
;树形递归
(define (f n)
  (cond ((< n 3) n)
  (else (+ (f (- n 1))
           (* (f (- n 2)) 2)
           (* (f (- n 3)) 3)))))


;线性递归
(define (f2 n)
  (f-iter 0 1 2 n))
(define (f-iter x y z n)
(cond
((= n 0) x)
(else (f-iter y z (+ z (* 2 y) (* 3 x)) (- n 1)))))
