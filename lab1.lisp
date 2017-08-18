;; reload shortcut
(defun tut nil (load "lab1.lisp"))

;; opinion
(setf *opinion '(lisp is a flexible language and good for symbol processing))

;; taylor
(setf *taylor-speak '(do i not like that))

;; corrected
(setf *proper-speak (append (list (second *taylor-speak) (first *taylor-speak))
		(member 'not *taylor-speak)))
;; or
(setf *proper-speak (append (list (first (rest *taylor-speak)))
                            (list (first *taylor-speak))
                            (rest (rest *taylor-speak))))