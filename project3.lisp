; Part 1 Implementation
(defun set-member (set item) 
  (if (null set) 
      nil 
      (or (equal item (car set))           
          (set-member (cdr set) item))))

; Testing with the examples provided
(print(set-member '(1 2) 1))
(print(set-member '(1 2) 3))