(require 2htdp/image)

(define I1 (rectangle 10 20 "solid" "red"))
(define I2 (rectangle 20 20 "solid" "red"))
(define I3 (rectangle 20 10 "solid" "red"))

;; Image -> Strings  (image produce string)
;; Produce shape of image, one of "Tall", "Square" or "Wide"

(check-expect (aspect-ratio I1) "tall")
(check-expect (aspect-ratio I2) "square")
(check-expect (aspect-ratio I3) "wide")

;; define (aspect-ratio img) " ") ; stub
;; define (aspect-ratio img)      ; template
;;    (... img))

;; Below are the code

;; (define (aspect-ratio img)
;;     (if (> (image-height img) (image-width img))
;;         "tall"
;;         (if (= (image-height img)(image-width img))
;;             "square"
;;             "wide")))

;; The code above looks like well formed, but in fact are wrong.
;; The second conditional IF are inside the first IF, this meaning that
;; The second conditional will only be use IF the first result are false,
;; and that isn´t the correct stub and template. So I correct the code and
;; put him below.
;; In other words, the condicional in the code above is what we call multi-armed
;; conditional. I add also the Else conditional, so if none of the previous questions
;; were true, ''do this'', in this case is answer ''wide''.

(define (aspect-ratio img)
  (cond [(> (image-height img) (image-width img))"tall"]
        [(= (image-height img)(image-width img)) "square"]
        [else "wide"]))



