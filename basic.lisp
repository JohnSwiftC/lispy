(defun hello-world()
  (format t "hello, world!"))

(defun make-record (title rating artist)
  (list :title title :rating rating :artist artist))

(defvar *db* nil)

(defun add-record (record)
  (push record *db*))

(defun fib(n)
  (if (< n 2) n (+ (fib (- n 1)) (fib (- n 2)))))

(defun verbose-sum (x y)
  (format t "Summing ~d and ~d.~%" x y)
  (+ x y))

(verbose-sum 1 3)

