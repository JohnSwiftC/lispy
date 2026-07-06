(defun hello-world()
  (format t "hello, world!"))

(defun make-record (title rating artist)
  (list :title title :rating rating :artist artist))

(defvar *db* nil)

(defun add-record (record)
  (push record *db*))

(defun fib(n)
  (if (< n 2) n (+ (fib (- n 1)) (fib (- n 2)))))

(fib 7)
