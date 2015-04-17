#lang racket


;这是Racket里的注释
(define (new-if pradicate then-clause else-clause)
  (cond (pradicate then-clause)
        (else else-clause)))

(define (average x y) (/ (+ x y) 2))
(define (improve guess x)
  (average guess (/ x guess)))
(define (good-enough? guess x)
   (< (abs(- (sqr guess) x)) 0.0001))

;内存耗尽
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))
