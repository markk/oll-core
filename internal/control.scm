;; control syntax
;;
;; Andrew Bernard 2017


(define-module (oll-core internal control))

(cond-expand
 (guile-2)
 (else
  (use-syntax (ice-9 syncase))

  ;; when and unless from R6RS

  (define-syntax when
    (syntax-rules ()
      ((when test result1 result2 ...)
       (if test
           (begin result1 result2 ...)))))


  (define-syntax unless
    (syntax-rules ()
      ((unless test result1 result2 ...)
       (if (not test)
           (begin result1 result2 ...)))))

))
