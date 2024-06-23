(defun my-function (x)
  (if (eq x 1)
      (message "x is 1")
    (message "x is not 1")))

(debug-on-entry 'my-function)

(my-function 2)
