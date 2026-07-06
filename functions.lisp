; functions can be defined to have optional
; parameters. they can be self evaluating atoms
; or can be previous paramters from the function
; you can also get a variable which shows wheter or not
; the optional variable is being provided by the caller
; or not
(defun has-optional (a b &optional (c 4 c-provided-p))
  (list a b c c-provided-p))

(has-optional 1 2) ; c will be 4, 4th element with be NIL
(has-optional 1 2 3) ; c will be 3, 4th element with be T

; an example with the rectangle
; using the width as height if its
; not provided

(defun create-rectangle (width &optional (height width))
  (list width height))

(create-rectangle 2)
(create-rectangle 2 4)

; rest parameters, captures any extra values
; into the parameter as a list

(defun rest-demo (a &rest others)
  (list a others))

(rest-demo 1 2 3 "string lol") ; shows a list with 2 elements, the value 1, and a list containing all of the other elements

; functions can also be given keyed parameters,
; which is sort of like how you can name your parameters
; in python. these more or less must then be keyed by keywords

(defun keyed-function (&key (a 0) (b a) (apple (+ a b)))
  (list a b apple))

(keyed-function :a 1)
(keyed-function :a 2 :b 12)
