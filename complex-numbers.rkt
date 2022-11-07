#lang racket

;Universidad Nacional
;Facultad de Ciencias Exactas y Naturales
;Sede Interuniversitaria de Alajuela, SIUA
;EIF-400 –QuizCorto
;II Ciclo 2022
;Dr. Juan de Dios Murillo-Morera
;Estudiante: Jonathan Pineda Alemán 
;ID: 207690564

;EJERCICIO 1.A

; se define la funcion generica
(define (generico a b i)
  (+ a(* b i)))


(generico 2 8 2)


;suma
(define (suma generico c d)
  (+ generico (suma c d (cdr generico))))
  ;(* generico (+ c (* d (cdr generico)))))

;multiplicacion
(define (mutiplicacion generico suma)
  (* generico suma))

;resta
(define (resta generico c d)
  (- generico(resta c d (cdr generico))))

;conjugado
(define (conjugado a b i)
  (- a(* b i)))

;EJERCICIO 1.B
;----------------------------------------------------------------------------------------------------------------------------------

;(Multiplica L) // Multiplica todos los elementos de la lista L
(define (Multiplica L)
  (if (null? L)
      1
      (* (car L) (Multiplica (cdr L)))))

;(Multiplica L1 L2) // Multiplica dos a dos elementos de las listas L1 y L2 y retorna el resultado en otra lista
(define (Multiplicar L1 L2)
  (if (null? L1)
      '()
      (cons (* (car L1) (car L2)) (Multiplica (cdr L1) (cdr L2)))))

;(Aplica f L) // Aplica una función f a toda la lista L
(define (Aplica f L)
  (if (null? L)
      '()
      (cons (f (car L)) (Aplica f (cdr L)))))

;(invierte L) // Invierte la lista L [UTILIZAR EN EL PROYECTO (MOVIMIENTO EN L DEL CABALLO)]
(define (invierte L)
  (if (null? L)
      '()
      (append (invierte (cdr L)) (list (car L)))))

;(ordena L) // Ordena la lista L
(define (ordena L)
  (if (null? L)
      '()
      (append (ordena (filter (lambda (x) (< x (car L))) (cdr L)))
              (list (car L))
              (ordena (filter (lambda (x) (>= x (car L))) (cdr L))))))

;Suma tres listas y el resultado lo deja en una cuarta lista
(define (sumar L1 L2 L3)
  (if (null? L1)
      '()
      (cons (+ (car L1) (car L2) (car L3)) (suma (cdr L1) (cdr L2) (cdr L3)))))

;Producto de tres listas y el resultado lo deja en una cuarta lista.
(define (producto L1 L2 L3)
  (if (null? L1)
      '()
      (cons (* (car L1) (car L2) (car L3)) (producto (cdr L1) (cdr L2) (cdr L3)))))

;(Subconjunto? L1 L2) retorna TRUE si la lista L1 está contenida en la lista L2.
(define (Subconjunto? L1 L2)
  (if (null? L1)
      #t
      (and (member (car L1) L2) (Subconjunto? (cdr L1) L2))))
      ; funcion member retorna #t si el elemento está en la lista
      ;https://www.cs.bham.ac.uk/research/projects/poplog/paradigms_lectures/lecture5.html

;(Eliminar X L) que elimina la primera aparición de X en la lista L, el resultado lo deja en otra lista.
(define (Eliminar X L)
  (if (null? L)
      '()
      (if (equal? X (car L))
          (cdr L)
          (cons (car L) (Eliminar X (cdr L))))))