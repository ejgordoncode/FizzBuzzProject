#lang racket

(define (fizzBuzz startInt endInt)
  (when (<= startInt endInt)
    (cond
      [(and (= (modulo startInt 3) 0) (= (modulo startInt 5) 0))
        (displayln "FizzBuzz")]
      [(= (modulo startInt 3) 0)
        (displayln "Fizz")]
      [(= (modulo startInt 5) 0)
        (displayln "Buzz")]
      [else
        (displayln startInt)])
    (fizzBuzz (+ startInt 1) endInt)))

(fizzBuzz 1 100)