; Part 1 Implementation - Gabe
(defun set-member (set item) 
  (if (null set) 
      nil 
      (or (equal item (car set))           
          (set-member (cdr set) item))))

; Part 2 Implementation - Andrick
(defun set-union (set-1 set-2)
  (let ((result set-1)))
    (dolist (elem set-2 result)
      (unless (member elem result)
        (push elem result))))
)
; Part 3 Implementation - Jeremy
(defun set-intersection (set-1 set-2)
   (cond ((null set-1) nil)
        ((set-member set-2 (car set-1))
         (cons (car set-1) (set-intersection (cdr set-1) set-2)))
        (t (set-intersection (cdr set-1) set-2))))

; part 4 Implementation - Jeremy
(defun set-diff (set-1 set-2)
  (cond ((null set-1) nil)
        ((set-member set-2 (car set-1))
         (set-diff (cdr set-1) set-2))
        (t (cons (car set-1) (set-diff (cdr set-1) set-2)))))

; Part 5 Implementation - Tram
(defun boolean-xor (a b)
   (if (not (null a))
    (not (and a b))     
    (if (not (null b))
        (not (and a b))))
)


; Part 6 Implementation - Gabe
(defun boolean-implies (a b)
      (not (and a (not b))) 
)


; Part 7 implementation - Tram
(defun boolean-iff (a b)
(if (null a)
    (not(or a b))     
    (if (not (null a))
        (and a b)))
)


; Part 8 implementation - Lena
(defun boolean-eval (exp)
  (cond ((equal exp 'T) T)
        ((equal exp 'NIL) NIL)
        ((equal (first exp) 'NOT) (not (boolean-eval (second exp))))
        ((equal (first exp) 'AND) (and (boolean-eval (second exp)) (boolean-eval (third exp))))
        ((equal (first exp) 'OR) (or (boolean-eval (second exp)) (boolean-eval (third exp))))
        ((equal (first exp) 'XOR) (boolean-xor (boolean-eval (second exp)) (boolean-eval (third exp))))
        ((equal (first exp) 'IMPLIES) (boolean-implies (boolean-eval (second exp)) (boolean-eval (third exp))))
        ((equal (first exp) 'IFF) (boolean-iff (boolean-eval (second exp)) (boolean-eval (third exp))))))
