# Lisp
- Imperative: programs specify how to carry out a function
- Functional: syntax and philosophy based on recursion, functions return values, procedures change variable values by side effects
- Syntax based on symbolic expressions, aka s-expressions
- s-expressions cosist of either an atom or a list
- atom is either a number of symbol (999, *, all-my-hookers, NIL)
- list is a sequence of atoms or other lists
> Quote

```javascript
' <-- stops evaluation of the list
(quote (+ 4 5)) // returns (+ 4 5)
'(+ 4 5) // returns (+ 4 5)
```


> Function

```javascript
(defun name (list of parameters) (form))
(function-name 1 2 alpha) // function call
```
> Variable definition

```javascript
// GLOBAL
> (setf *association-list '((property-one (a 1) (b 2) (c 3))))
> *association-list
((PROPERTY-ONE (A 1) (B 2) (C 3)))

// LOCAL
> (let ((var 7)) (format t "Variable var has value ") var)
Variable var has value
7
> var
*** - SYSTEM::READ-EVAL-PRINT: variable VAR has no value
```
To change global variables, it is better to create a function to change it:

```javascript
(setf global (change-global global))
(change-global global)
// NB: hard to track and debug, so leave a comment if that is necessary
(change-global) // value changes, btw
```
> Assoc

```javascript
> (assoc 'property-one *association-list)
(PROPERTY-ONE (A 1) (B 2) (C 3)) // NB: returns a value, not a list
```
> List

```javascript
> (list (assoc 'property-one *association-list))
((PROPERTY-ONE (A 1) (B 2) (C 3)))
```
> Construct

```javascript
> (cons 1 '(2 3)) // puts first argument at the head
(1 2 3)
```
> Append

```javascript
> (append '(1 2 3) '(4 5 6) '(7 8 9) '(Whehey))
(1 2 3 4 5 6 7 8 9 WHEHEY)
```
> Length

```javascript
> (length *association-list)
1
```
> Reverse

```javascript
> (reverse '(1 2 3))
(3 2 1)
```
> Dolist

```javascript
> (defun double (l)
    (let ((double-list nil))
    (dolist (element l double-list)
            (setf double-list 
                (cons (* 2 element) double-list)))))
DOUBLE
> (double '(1 2 3))
(6 4 2)
```
> Boolean operators
equal - T if args are the same expr
eql - T if args are the same symbol or number
eq - T if args are the same symbol (identical memory chunk)
= - T if args are the same number

```javascript
> (setf *a '(1))
(1)
> (setf *b '(1))
(1)

> (= *a *b)
*** - =: (1) is not a number
> (= 1 1)
T

> (eq *a *b)
NIL
> (eq 1 1)
T

> (eql *a *b)
NIL
> (eql 1 1)
T

> (equal *a *b)
T
> (equal 1 1)
T
```
> Member

```javascript
> (member 't '(i n t e l l i g e n t))
(T E L L I G E N T)

> (member 'u '(i n t e l l i g e n t))
NIL
```
> if-else

```javascript
(defun biggest (x y)
    (if (> x y)
        x
      y))

> (biggest 3 5)
5
```
> progn

```javascript
(defun bigger (x y)
    (if (> x y)
        (format t "~%first argument is bigger")
      (progn (format t "~%second argument is bigger")
             (format t "~%here is the second form for else bit~%"))))
 
>  (bigger 3 4)
second argument is bigger
here is the second form for else bit
NIL
> (bigger 4 3)
first argument is bigger
NIL
```




