(import 
 (chezscheme)
 (ray))


;; This is the simplest example of using Ray using Chez


;; We define a function that implements the "ui-loop" idiom 
;; from graphical applications. The main function starts up
;; and calls the draw-loop which runs continuously and 
;; processes events and updates ui. 
(define (ui-loop)
  ;; Has the user clicked to close the window?
  (if (window-should-close)  
      (begin
        (printf "See you back again soon!\n")
        (close-window))
      (begin
        ;; We begin our frame here
        (begin-drawing) 
        (clear-background RAYWHITE)
        (draw-text "Congrats! You created your first window!" 190 200 20 LIGHTGRAY)
        ;; And with end-drawing our frame ends.
        (end-drawing)
        ;; And its time to jump to next iteration of the ui-loop.
        (ui-loop)  
        )))

(define (app)
  (let ((screen-width 800)
      (screen-height 450))
    ;; Create our main window
    (init-window screen-width screen-height "Hello World!")
    
    ;; Setting a target FPS is important because without it
    ;; Ray tries to render as many frames per second as it can
    ;; and this eats up cpu.
    (set-target-fps 30) 
                      
    ;; Jump to our ui-loop
    (ui-loop)))


(app)
