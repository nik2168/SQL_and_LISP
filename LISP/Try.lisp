;; run cmd  - clisp "/Users/nik21/Desktop/LISP/Try.lisp"  


;; datatypes in lisp
;; all datatypes in lisp

;; numbers
; 1
; 3.14


;; symbols
; 'hello
; 'test
; test

;; strings
; "hello"
; "test"

;; nil
; nil

;; lists
; '(1 2 3)
; (list 1 2 3)

;; vectors
; #(1 2 3)
; (vector 1 2 3)


; symbols
; - symbol is like a variable in c++
; - symbol is a name of a variable
; - symbol is a name of a function  
; example - 
; (defun add (x y) (print (+ x y)))
; (add 2 2) 


; evaluation in lisp -
; - evaluation in lisp is a process of evaluating a list of expressions and returning the value of the last expression in the list
; (+ 3 4)  => 7


;; lists 
;;- lists in lisp are simply the linked list in c++
; (setq my-list '(1 2 3 4 5 6 7))
; (mapcar (lambda (x) (print x)) `(1 2 3))  -> print the list 1 2 3


; conditions
; - if else in lisp
; - switch case in lisp
; example - 
; (defun print-odd-or-even (n)
;     (if (oddp n)
;     (princ "Odd")
;     (princ "Even")))

;; functions
;; - uses defun keyword and infix operators in lisp inside a function
;  (defun add (x y) (print (+ x y)))
;  (add 2 2)


;; lambda 
;; - anonyms function which defines and called itself
; (funcall (lambda (x y) (format t "adding number ~a and ~a~%" x y) (print (+ x y))) 2 3)


; emacs 
; - emacs is a text editor for unix


; REPL in Lisp?
; Read - Eval - Print - Loop
; It’s an interactive programming environment that reads Lisp expressions, evaluates them, prints the result, and waits for the next input.

; Backquotes In Lisp
; - backquotes are used to create lists in lisp, they prevents evalution of list by default but using comma "," we can evaluate
;  example - (setq r 3)
;            (print `(2 3 ,r))   => (2 3 3)


; vector in lisp
; - vector is a array in lisp of fixed size
; (setq v #(1 2 3))
; (print (length v))
; (setf (aref v 2) 99) ; edit index
; (print (aref v 2)) ; print :index
; (loop for i from 0 to (1- (length v)) do (print (aref v i)))


; macro in lisp
; - macro is a function which is used to define a function in lisp
;   (defmacro state (&rest args) `(print ,@args))
;   (state 2)

;; example of macro
(defmacro say-hello (name)
  `(format t "Hello, ~a!~%" ,name))

(say-hello "Nik")
