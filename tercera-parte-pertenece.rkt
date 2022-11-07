#lang racket
;Construya una función Scheme (Pertenece? X L) que retorna verdadero o falso dependiendo de si el
;elemento X pertenece a la lista L o no.
;Utilizando la función Pertenece? construya una función (Resta L1 L2) que le resta a la lista L1 la lista L2,
;retornando una lista con aquellos elementos que están en L1 pero no en L2

(define (Pertenece? X L)
  (cond
    [(null? L) #f]
    [(equal? X (car L)) #t]
    [else (Pertenece? X (cdr L))]))
    ;ejemplo
    
(Pertenece? 1 '(1 2 3 4 5 6 7 8 9 10))
