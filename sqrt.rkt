#lang racket


; Racket file called .rkt
(define (sqrt-self x)
  (define (good-enough? guess)
    (< (abs(- (sqr guess) x)) 0.0001))
  (define (average x y) (/ (+ x y) 2))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

