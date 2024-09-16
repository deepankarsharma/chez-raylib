(import (chezscheme)
        (ray))

(define screen-width 800)
(define screen-height 450)

(define current-screen 'LOGO)
(define frames-counter 0)  ; Useful to count frames

(define (ui-loop)
  (unless (window-should-close)
    ;; Update
    (case current-screen
      ((LOGO)
       ;; Update LOGO screen variables here!
       (set! frames-counter (+ frames-counter 1))
       ;; Wait for 2 seconds (120 frames) before jumping to TITLE screen
       (when (> frames-counter 120)
         (set! current-screen 'TITLE)))
      ((TITLE)
       ;; Update TITLE screen variables here!
       ;; Press enter to change to GAMEPLAY screen
       (when (or (is-key-pressed KEY_ENTER) (is-gesture-detected GESTURE_TAP))
         (set! current-screen 'GAMEPLAY)))
      ((GAMEPLAY)
       ;; Update GAMEPLAY screen variables here!
       ;; Press enter to change to ENDING screen
       (when (or (is-key-pressed KEY_ENTER) (is-gesture-detected GESTURE_TAP))
         (set! current-screen 'ENDING)))
      ((ENDING)
       ;; Update ENDING screen variables here!
       ;; Press enter to return to TITLE screen
       (when (or (is-key-pressed KEY_ENTER) (is-gesture-detected GESTURE_TAP))
         (set! current-screen 'TITLE)))
      (else (printf "booo ~a ~a\n" current-screen 'LOGO)))

    ;; Draw
    (begin-drawing)
    (clear-background RAYWHITE)

    (case current-screen
      ((LOGO)
       ;; Draw LOGO screen here!
       (draw-text "LOGO SCREEN" 20 20 40 LIGHTGRAY)
       (draw-text "WAIT for 2 SECONDS..." 290 220 20 GRAY))
      ((TITLE)
       ;; Draw TITLE screen here!
       (draw-rectangle 0 0 screen-width screen-height GREEN)
       (draw-text "TITLE SCREEN" 20 20 40 DARKGREEN)
       (draw-text "PRESS ENTER or TAP to JUMP to GAMEPLAY SCREEN" 120 220 20 DARKGREEN))
      ((GAMEPLAY)
       ;; Draw GAMEPLAY screen here!
       (draw-rectangle 0 0 screen-width screen-height PURPLE)
       (draw-text "GAMEPLAY SCREEN" 20 20 40 MAROON)
       (draw-text "PRESS ENTER or TAP to JUMP to ENDING SCREEN" 130 220 20 MAROON))
      ((ENDING)
       ;; Draw ENDING screen here!
       (draw-rectangle 0 0 screen-width screen-height BLUE)
       (draw-text "ENDING SCREEN" 20 20 40 DARKBLUE)
       (draw-text "PRESS ENTER or TAP to RETURN to TITLE SCREEN" 120 220 20 DARKBLUE)))

    (end-drawing)

    (ui-loop)))


(define (main)
  (init-window screen-width screen-height
               "raylib [core] example - basic screen manager")
  (set-target-fps 60)
  (ui-loop)
  (close-window))


(main)
