#lang racket
(define (inc x)
  (+ x 1))
(define (dec x)
  (- x 1))

;线性递归,递归a次
(define (plus a b)
  (if (= a 0)
      b
      (inc (plus (dec a) b))))

;线性迭代，迭代a次
(define (plus2 a b)
  (if (= a 0)
      b
      (plus2 (dec a) (inc b))))