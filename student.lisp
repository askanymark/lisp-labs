(setf student '((hair brown) (eyes blue) (exam-mark 82)))

(setf all-my-money
      '((form (1 2 3)) (fitness (24 4)) (trainer ((name pipe) (strike-rate 21)))))

(defun get-last-position (horse)
  	(third (second (assoc 'form horse))))

;; to return trainer's name for a specific horse
(defun get-trainer-name (horse)
	(second (assoc 'name (second (assoc 'trainer horse)))))

;; another horse
(setf desert-orchid 
      '((form (1 1 1)) (fitness (24 1)) (trainer ((name elsworth) (strike-rate 100)))))