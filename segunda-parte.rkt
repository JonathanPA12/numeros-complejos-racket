#lang racket

;Universidad Nacional
;Facultad de Ciencias Exactas y Naturales
;Sede Interuniversitaria de Alajuela, SIUA
;EIF-400 –QuizCorto
;II Ciclo 2022
;Dr. Juan de Dios Murillo-Morera
;Estudiante: Jonathan Pineda Alemán 
;ID: 207690564


;Construya una función Scheme (Divide L X)
;que retorna una lista compuesta por dos sublistas que contienen los elementos de la lista original,
;en la primera de las listas están los elementos menores o iguales a X
;y en la segunda los mayores a X

(define (Divide L X)
  (if (null? L)
      (list '() '())
      (if (<= (car L) X)
          (cons (cons (car L) (car (Divide (cdr L) X))) (cdr (Divide (cdr L) X)))
          (cons (car (Divide (cdr L) X)) (cons (cons (car L) (car (Divide (cdr L) X))) (cdr (Divide (cdr L) X)))))))

;Ejemplo
(Divide '(1 2 3 4 5 6 7 8 9 10) 5)