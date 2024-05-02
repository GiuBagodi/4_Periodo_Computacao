(terpri)
(write "Hello, World!")

(terpri)
(format t "O resultado da expressao eh: ~d"(+ 5 (* 2 3)))

(defvar y 0)
(setq y (- (+ 10 5) (/ 50 2)))
(terpri)
(format t "O resultado da expressao eh: ~d" y)

(terpri)
(write y)

(defvar x 1)
(setq x 50)
(terpri)
(write x)

(defvar z (+ 5 (* 3 (/ 4 10))))
(terpri)
(format t "O resultado da expressao eh: ~f" z)

(defun soma (a b) 
  (+ a b))
  
(defun incrementaX (c)
  (+ x c))
  
(format t "~%~d" (soma 10 20))

(setq x (incrementaX 20))
(format t "~%~d" x)
