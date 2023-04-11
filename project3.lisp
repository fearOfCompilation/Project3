; Part 1 Implementation
(defun set-member (set item) 
  (if (null set) 
      nil 
      (or (equal item (car set))           
          (set-member (cdr set) item))))

; Testing with the examples provided
(print(set-member '(1 2) 1))
(print(set-member '(1 2) 3))

; Part 3 Implementation
(defun set-intersection (set-1 set-2)
      ;Your implementation go here
      )

; part 4 Implementation
(defun set-diff (set-1 set-2)
      ;Your implementation go here
      )

; Part 5 Implementation
(defun boolean-xor (a b)
      ;Work in here
)

; Part 6 Implementation
(defun boolean-implies (a b)
      ;Work in here
)

; Part 7 implementation
(defun boolean-iff (a b)
      ;Work in here
)

; Part 8 implementation
(defun boolean-eval (exp)
      ;Work in here
)