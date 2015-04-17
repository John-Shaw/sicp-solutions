#lang racket

;
(define (Ackermann x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (Ackermann (- x 1)
                         (Ackermann x (- y 1))))))

;2*n
(define (f n) (Ackermann 0 n))

;2^n
(define (g n) (Ackermann 1 n))
 
;2^(h(n-1)) 2的前一项次方 h(n) = 2 ^ (h(n-1))
(define (h n) (Ackermann 2 n))