; Part 1 Implementation - Gabe
(defun set-member (set item) 
  (if (null set) 
      nil 
      (or (equal item (car set))           
          (set-member (cdr set) item))))

; Testing with the examples provided
(print(set-member '(1 2) 1))
(print(set-member '(1 2) 3))

; Part 2 Implementation - Andrick
(defun set-union (set-1 set-2)
      ;Work in here
)
; Part 3 Implementation - Jeremy
(defun set-intersection (set-1 set-2)
      ;Your implementation go here
)

; part 4 Implementation - Jeremy
(defun set-diff (set-1 set-2)
      ;Your implementation go here
)

; Part 5 Implementation - Tram
(defun boolean-xor (a b)
	
   (if (not (null a))
    (not (and a b)) 
    
    (if (not (null b))
        (not (and a b))))
     
)

; Testing with the examples provided
(print(boolean-xor nil nil))
(print(boolean-xor t t))
(print(boolean-xor t nil))
(print(boolean-xor nil t))


; Part 6 Implementation - Gabe
(defun boolean-implies (a b)
      (not (and a (not b))) 
)

; Testing part 6 implementation
(print(boolean-implies t nil))
(print(boolean-implies nil nil))

; Part 7 implementation - Lena
(defun boolean-iff (a b)
      ;Work in here
)

; Part 8 implementation - Lena
(defun boolean-eval (exp)
      ;Work in here
)
