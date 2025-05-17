
;; Run cmd -  clisp "/Users/nik21/Desktop/LISP/First.lisp"


(funcall (lambda (x y) (format t "adding number ~a and ~a~%" x y) (print (+ x y))) 2 3)

; (setq my-list '(1 2 3 4 5 6 7))
; (mapcar (lambda (x) (print x)) `(1 2 3))

; (defun checkEvenOdd (x)
;   (if (= (mod x 2) 0)
;       (format t "Even")
;       (format t "Odd")
;       )
; )


; (checkEvenOdd 2)
; (print (list 3 2 4 5 6 7 8 9 9 9))
; (print (mapcar (lambda (x) (* x 2)) '(1 2 3 4)))
;; => (2 4 6 8)
; ((lambda (x) (print (* x 3))) 4)




; closure and lamba function -
; (print (funcall (lambda (x) (+ x 10)) 5))


; closures -
; (defun make-counter ()
;   (let ((count 0))
;     (lambda ()
;       (incf count))
;       ))


; (setq c1 (make-counter))
; (funcall c1) ; => 1
; (funcall c1) ; => 2
; (funcall c1) ; => 3

; (setq c2 (make-counter))
; (print (funcall c2)) ; => 1 (independent counter)



; classes and structs - 
; (defclass person ()
;   ((name :initarg :name :accessor person-name)
;    (age :initarg :age :accessor person-age)))

; (defmethod greet ((p person))
;   (format t "Hello, my name is ~A." (person-name p)))

; (setq p (make-instance 'person :name "Alice" :age 30))
; (greet p) ; => Hello, my name is Alice.


; (defstruct point
;   x
;   y)

; (setq pt (make-point :x 3 :y 4))
; (print (point-x pt)) ; => 3

; (defmacro sum (a b) `(+ ,a ,b))

; ; (print (sum 2 3))
; (terpri)
; (macroexpand-1 '(sum 2 3))

; (when t (print "Hello") (print "World")) ; -> when is used for if type & its a macro



; do loop
; (defun read-number ()
;   (print "Enter a number : ")
;   (finish-output)
;   (parse-integer(read-line))
;   )


;   (defun read-and-sum (n)
;     (let ((sum 0))
     
;      (do ((i (read-number) (read-number))) ((= i 0) sum)  ; -- this will read value until we insert 0
;      (setf sum (+ sum i)))))

;     (print (read-and-sum 3))

;; loops -

; do loop
; (defun read-number ()
;   (print "Enter a number : ")
;   (finish-output)
;   (parse-integer(read-line))
;   )


;   (defun read-and-sum (n)
;     (let ((sum 0))
     
;      (do ((i 0 (+ i 1))) ((= i n) sum)
;      (setf sum (+ sum (read-number))))))

;     (print (read-and-sum 3))


; dotimes loop -
; (defun read-number () 
;    (print "Write a number : ")
;     (finish-output)
;     (parse-integer(read-line))
;     )

; (defun read-and-sum (n)

;    (let ((sum 0) (temp 0))

;    (princ (dotimes (i n sum)
;     (setf sum (+ sum (read-number)))
;     (setf temp (+ temp 1))

;      (if (> temp 2)
;       (print "yess !")
;       (print "No !"))
;     ))
;     temp))

; (print (read-and-sum 3))

; ouput
; "Write a number : " 1

; "Write a number : " 2

; "Write a number : " 3

; 6 


;; conditions -

; (defun check (n)   ; -> progn is used for nested if type
;      (if(> n 0)
;        (progn 
;         (print "Yes it is greator !")
;         (print "doing more ...")
;         (print n)
;         )
;         (print "not greator !")
;         ))

; (check 5)

;; -- using cond as switch case for multiple conditions
; (defun print-odd-or-even (n)
;     (cond 
;     ((oddp n) (princ "Odd"))
;     ((evenp n) (princ "Even"))
;     (t (princ "Neither odd nor even"))
;     ))

; (print-odd-or-even 3)

;; -- using if else
; (defun print-odd-or-even (n)
;     (if (oddp n)
;     (princ "Odd")
;     (princ "Even")))

; (print-odd-or-even 3)
; (terpri) ;; next line
; (print-odd-or-even 4)






;; Variables Define and reuse -

; (let* ((x 42) (y x))

; (princ x)
; (terpri)
; (princ y)
; )
