
LISP Programming -
**Introduction to LISP Programming**

LISP (LISt Processing) is one of the oldest high-level programming languages, originally specified in 1958. It was designed by John McCarthy and is particularly known for its excellent support for symbolic reasoning and recursive functions. Here are some key aspects of LISP:

1. **Syntax**: 
   LISP uses a very simple and uniform syntax based on s-expressions (symbolic expressions). An s-expression is either an atom or a list. For example, `(add 1 2)` is a typical LISP expression where `add` is a function applied to the arguments `1` and `2`.

2. **Lists**: 
   Lists are the fundamental data structure in LISP. Everything in LISP is either an atom or a list, and functions are applied using lists. Lists are mutable and can contain any data type, including other lists.

3. **Functions**: 
   Functions are first-class citizens in LISP, meaning they can be passed as arguments to other functions, returned as values, and assigned to variables. LISP functions are defined using the `defun` keyword.

4. **Recursion**: 
   LISP excels in recursive programming due to its inherent support for recursion. Many algorithms in LISP are implemented recursively rather than iteratively.

5. **Macros**: 
   LISP has a powerful macro system that allows you to create new syntactic constructs in a way that is not possible in most other programming languages. Macros operate on the code itself, enabling metaprogramming.

6. **Garbage Collection**: 
   LISP was one of the first programming languages to include automatic garbage collection, helping manage memory efficiently.

7. **Variants**: 
   Over time, various dialects of LISP have emerged, including Common Lisp, Scheme, and Clojure. Each has its own unique features and use cases.

LISP is widely used in academic research, AI development, and for tasks requiring complex symbolic computation. Its powerful features continue to influence modern programming languages and paradigms.

**How LISP Programs Work**

LISP programs are composed of expressions, which are either atoms or lists. The execution of a LISP program involves evaluating these expressions according to the following rules:

1. **Atoms**: An atom is a single entity, such as a number, symbol, or string. When an atom is evaluated, it returns the value it represents. For example, the atom `42` evaluates to the number `42`.

2. **Lists**: A list is a sequence of expressions enclosed in parentheses. The first element of a list is typically a function or operator, and the remaining elements are arguments. To evaluate a list, LISP first evaluates the operator and then the arguments, applying the operator to the arguments. For example, the expression `(+ 1 2)` evaluates to `3`.

3. **Special Forms**: LISP has special forms that do not follow the standard evaluation rules. These include constructs like `if`, `let`, `lambda`, and `quote`. Special forms are used for control flow, variable binding, and defining functions.

4. **Function Calls**: When a list begins with a function, LISP evaluates the function with the provided arguments. Functions can be built-in or user-defined, and they can return any data type, including other functions.

5. **Recursion**: LISP heavily relies on recursion for looping and repetitive tasks. Recursive functions call themselves with modified arguments until a base condition is met.

6. **Variable Scope**: LISP uses lexical scoping, where the scope of a variable is determined by its position in the source code. Variables are defined using constructs like `let` and `defvar`.

Understanding these core concepts is essential for working with LISP, as they form the basis of all LISP programs and allow for powerful and flexible programming paradigms.



### Working of Lisp Program -
- It reads the input
- It interprets the input as lisp object
- It evaluates the lisp object
- It returns the output


Type | Example
Number | 123, 3.14, -5
String | "Hello"
Symbol | x, my-var
List | (1 2 3)
Function | #'square
Boolean | t (true), nil (false)

Form | Meaning
(function arg1 arg2) | Call function
(defun name (args) body) | Define a function
(setq var value) | Set a variable
(if cond true-part false-part) | Branch
'something | Quote (data not code)  | (quote something)
`(template ,value) | Template
(funcall function args) | Call function variable

# Knows as REPL
Read-Eval-Print Loop

# Data Types
* 123
123

* "Hello"
"Hello"

* 'Hello
'Hello

* nil
nil

* pi
3.14159265358979323846

* t
t

* (+ 2 3)  ;; lisp has no operators, it treats everything same as function calls
5

* (/ (+ -6 (sqrt (- (* 6 6) (* 4 1 8 ) ))) (* 2 1))       -> sol of eqn  x^2 + 6x + 8 = 0
-2.0


## functions

(defun name (args) (body))    - function definition
(name args)                   - function call

example
(defun add (a b) (+ a b))
(add 1 2)
3

### Concepts with Example of Code : 

# 1. take input and print name with string concatination

(defun askName ()
    (format t "Name : ")
    (finish-output)
    (read-line))

    (defun ask-and-return-name ()
       (let ((name (askName)))
       (setf name (concatenate 'string "Hello " name "|"))
       (format t "~A~%" name)
       name))  ;; fn returns the name

(ask-and-return-name) ;; calling the function
(princ "Hello")

// output : 
Name : Nik
Nik

## 2. conditions 

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


## 3. Variables Define and reuse -

; (let* ((x 42) (y x))

; (princ x)
; (terpri)
; (princ y)
; )

## 4. Loops

- dotimes loop :

(dotimes (var count [result])
  body...)

- do list loop :

(defun sumList (l)
               (let ((sum 0))
              (dolist (v l sum)
               (setf sum (+ sum v)))
 ))

- do loop :

(do ((i 0 (+ i 1)))  ; start i at 0, increment i by 1 each time
    ((= i 5)         ; stop when i = 5
     'done)          ; return 'done after finishing
  (format t "i = ~A~%" i))



## 5. lists 
  - These are similar to linked list
  - Where we can add anything at the begning

(setf x (cons 4 x))  - if x = (1 2) then this will add 4 at the begining
(4 1 2)

 ~ Functions
- (rest x)   - will return all element except first ele - (1 2)

- (length x) - return the length of list - 3

- (reverse x) - reverse of list - (2 1 4)

- (append x '(6 7 8))   - append new list to old -(4 1 2 6 7 8)

- (defun sumList (l)
               (let ((sum 0))
              (dolist (v l sum)
               (setf sum (+ sum v)))
 ))

 SUMLIST
 Break 8 [10]> (sumList '(1 2 3))
 6


 ## adding a list into a list 

 -four ways
 1. quotes '
 2. &rest x - @x
 3. list '
 4. backtick ,


- list
 (defun exp1 (x) (list '+ (list '+ 2 x) 1))   -> usign list keyword

 (exp1 5) -> calling function
 (+ (+ 2 5) 1)

-  comma's
(defun exp2 (x) `(+ (+ 2 ,x) 1))    - or we can use "," to just evalute single variable as x in this example .. 
(exp2 9)
(+ (+ 2 9) 1)

- rest
- (defun exp2 (&rest x) `(+ (+ 2 ,@x) 1))    -> @rest is used to define multiple parameter inside a single vaiable place in list

(exp2 1 2 3 4 5 5)
(+ (+ 2 1 2 3 4 5 5) 1)

### Macros
✅ Macros in Lisp are code that writes code.

- They transform code before it is evaluated.
- They allow you to extend the language itself.
- You can create new control structures (like unless, when, etc.).
- Macros operate on the raw Lisp code (unevaluated).

- Functions compute values.
- Macros compute code.
- a function is exicuted while all its arguments are evaluated

Example 

(defun foo (x) 42)
(foo x) -> error - x not defined

(defmacro foo (x) 42)
(foo x) -> 42  - because macro is exicuted before its arguments are evaluated

## Classes and Structs

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


## closures in list
defination - A closure is a function that has access to variables in its lexical scope, even when the function is not currently executing.

; closures -
; A closure is a function that has access to variables in its lexical scope,
; even when the function is not currently executing.
;
; In this example, the function `make-counter` returns a closure that has
; access to the `count` variable. The closure is a function that increments
; the `count` variable every time it is called.
;
(defun make-counter ()
  (let ((count 0))
    (lambda ()
      (incf count))
      ))


(setq c1 (make-counter))
(funcall c1) ; => 1
(funcall c1) ; => 2
(funcall c1) ; => 3

(setq c2 (make-counter)) -> lamba function just return the fn which we can call using funcall
(print (funcall c2)) ; => 1 (independent counter)


## lambda function
 - lambda function is also known as anonymous function
  Example - (lambda (x y) (+ x y))

         to call it instantly we can write it
         - (funcall (lambda (x) (+ x 10)) 5)
         => 15
