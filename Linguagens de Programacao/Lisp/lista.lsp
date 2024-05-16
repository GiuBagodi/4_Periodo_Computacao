(defun fatorial (f) 
  (if (<= f 2)
      f ;;Verdadeiro (nao precisa de () pq nao eh exp)
      (* f (fatorial(- f 1))) ;;falso
      ))
      
(format t "~%~D" (fatorial 5))
(terpri)

(defun conta (x y)
  (cond 
      ;;((condicao) (op1)...(opN))
      ((<= x y) (format t "~D " x)(conta (+ x 1) y))
      (t nil)))
      
(conta 5 10)

(defvar A 10)
(defvar B 20)

;; Impressao da variavel como char 'A
(terpri)
(write 'A)
(format t "~%~A" 'B)
(format t "~%~A" '(+ A B))
(format t "~%~A ~D" '(+ A B) (+ A B))
(terpri)
;; Lista Em Prolog [H|T]
;; Lista em Lisp cons car . cdr | cdr -> cons car . cdr
;; car = primeiro elemento da lista
;; cdr = resto da lista, sem o primeiro elem
;; . separa elementos
;; Ou declara a lista antes, ou utiliza cons

(format t "~%~A" (cons 'A 'B))
(format t "~%~A" (cons 'A '(B C)))
(format t "~%~A" (cons 'A (cons 'B '(C D E))))
(terpri)
(format t "Pegando os valores do 'topo' da lista")
(format t "~%~A" (car '(A B C)))
(format t "~%~A" (car '((A B) C D)))
(format t "~%~A" (car '( () B C)))
(terpri)
(format t "Pegando os valores da 'cauda' da lista")
(format t "~%~A" (cdr '(A B C))) ;;[A.(BCDE)].[B.(CDE)].[C.(DE)].[D.E] 
(format t "~%~A" (cdr '((A B) C ))) 
(format t "~%~A" (cdr '(A (B C)) ))

(defun soma (L)
  (if (null L)
    0
    (+ (car L) (soma (cdr L)))))
(format t "~% O resultado da soma eh: ~D" (soma '(1 2 3 4 5)))

;; Achar o maior elemento da lista
(defun maior (L)
  (cond 
      ((null L) 0)
      (t (setq m (maior (cdr L)))
        (if (> (car L) m)
          (car L)
          m))))
          
(format t "~% Maior elemento da lista eh: ~D" (maior '(10 4 50 2 5)))
