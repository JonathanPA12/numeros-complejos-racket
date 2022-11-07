#lang racket

;Construya una función en Scheme que recibe 2 listas de tamaño n y retorna una lista con n pares ordenados (listas)
;como se ilustra en el siguiente ejemplo:
;(Pares '(7 1 4 3) '(5 1 4 -1)) ---> ((7 5) (1 1) (4 4) (3 -1))

(define (Pares l1 l2)
  (if (null? l1)
      '()
      (cons (list (car l1) (car l2)) (Pares (cdr l1) (cdr l2)))))
(Pares '(7 1 4 3) '(5 1 4 -1))

