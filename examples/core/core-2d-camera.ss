(import 
 (chezscheme)
 (ray))


(define screen-width 800)
(define screen-height 450)

(define MAX_BUILDINGS 100)

;; Location of player in the demo. Drawn as a red square.
(define player (make-rectangle 400. 280. 40. 40.))

;; Location of camera in the demo.
(define camera 
  (make-camera2d 
   (make-vector2 (/ screen-width 2) (/ screen-height 2)) ;; offset 
   (make-vector2 (+ (rect-x player) 20) (+ (rect-y player) 20)) ;; target
   0 ;; rotation
   1 ;; zoom)
   ))

;; A vector rectangles that we render as buildings. 
(define buildings (make-fvec Rectangle MAX_BUILDINGS))

;; A vector of Colors. ith color is color of ith building.
(define building-colors (make-fvec Color MAX_BUILDINGS))


;; Initialization of application state.
;; Called once before we go into the ui-loop.
(define (app-init-state)
  (let ((spacing 0.))
    (do ((i 0 (+ i 1))) 
        ((= i MAX_BUILDINGS) MAX_BUILDINGS)
      
      ;; Update buildings
      (ftype-set! Rectangle (width) buildings i (frand-between 50 200))
      (ftype-set! Rectangle (height) buildings i (frand-between 100 800))
      (ftype-set! Rectangle (y) buildings i  (- screen-height 130. (frand-between 50 200)))
      (ftype-set! Rectangle (x) buildings i (- spacing 6000.))
      
      (ftype-set! Color (r) building-colors i (rand-between 200 240))
      (ftype-set! Color (g) building-colors i (rand-between  200 240))
      (ftype-set! Color (b) building-colors i (rand-between 200 250))
      (ftype-set! Color (a) building-colors i 255)
      
      (set! spacing (+ spacing (ftype-ref Rectangle (width) buildings i))))))


;; ui-loop never returns. every iteration draws a frame.
(define (ui-loop)
  (if (window-should-close)  ;; Has the user clicked to close the window?
      (begin
        (printf "See you back again soon!\n")
        (close-window))
      
      (begin

        ;; First things first - lets handle user input
        (if (is-key-down KEY_RIGHT)
            (ftype-set! Rectangle (x) player (+ (rect-x player) 2)))

        (if (is-key-down KEY_LEFT)
            (ftype-set! Rectangle (x) player (- (rect-x player) 2)))

        (camera2d-target-set! camera (+ (rect-x player) 20) (+ (rect-y player) 20))

        (if (is-key-down KEY_A)
            (camera2d-rotation-set! camera (- (camera2d-rotation camera) 1)))

        (if (is-key-down KEY_S)
            (camera2d-rotation-set! camera (+ (camera2d-rotation camera) 1)))

        (if (> (camera2d-rotation camera) 40)
            (camera2d-rotation-set! camera 40))
        (if (< (camera2d-rotation camera) -40)
            (camera2d-rotation-set! camera -40))

        (camera2d-zoom-set! camera (+ (camera2d-zoom camera) (* (get-mouse-wheel-move) 0.05)))

        (if (> (camera2d-zoom camera) 3.0)
            (camera2d-zoom-set! camera 3.0))
        (if (< (camera2d-zoom camera) 0.1)
            (camera2d-zoom-set! camera 0.1))

        (if (is-key-pressed KEY_R)
            (begin
              (camera2d-zoom-set! camera 1.0)
              (camera2d-rotation-set! camera 0.0)))


        
        ;; Now that inputs are squared away lets put pixels on the screen!
        (begin-drawing) ;; We begin our frame here
        (clear-background RAYWHITE)

        (begin-mode-2d camera)

        (do ((i 0 (+ i 1)))
            ((= i MAX_BUILDINGS))
          (draw-rectangle-rec 
           (fvec-at Rectangle buildings i)
           (fvec-at Color building-colors i)))

        (draw-rectangle-rec player RED)

        (draw-rectangle -6000 320 13000 8000 DARKGRAY)
        (draw-line
         (camera2d-target-x camera)
         (- (* (get-screen-height) 10.0))
         (camera2d-target-x camera)
         (* (get-screen-height) 10.0) GREEN)
        
        (draw-line 
         (- (* (get-screen-width) 10))
         (camera2d-target-y camera)
         (* (get-screen-width) 10)
         (camera2d-target-y camera) GREEN)

        (end-mode-2d)

        (draw-text "SCREEN AREA" 640 10 20 RED)

        (draw-rectangle 0 0 (get-screen-width) 5 RED)
        (draw-rectangle 0 5 5 (- (get-screen-height) 10) RED)
        (draw-rectangle (- (get-screen-width) 5) 5 5 (- (get-screen-height) 10) RED)
        (draw-rectangle 0 (- (get-screen-height) 5) (get-screen-width) 5 RED)        
        
        (let* ((fade-output (make-color 0 0 0 0))
               (_ (fade fade-output SKYBLUE 0.5)))
          (draw-rectangle 10 10 250 113 fade-output))

        (draw-rectangle-lines 10 10 250 113 BLUE)

        (draw-text "Free 2d camera controls:" 20 20 10 BLACK)
        (draw-text "- Right/Left to move Offset" 40 40 10 DARKGRAY)
        (draw-text "- Mouse Wheel to Zoom in-out" 40 60 10 DARKGRAY)
        (draw-text "- A / S to Rotate" 40 80 10 DARKGRAY)
        (draw-text "- R to reset Zoom and Rotation" 40 100 10 DARKGRAY)

        (end-drawing)
        (ui-loop))))


(define (app)

  ;; Create our main window
  (init-window screen-width screen-height "raylib [core] example - 2d camera")
  
  ;; Setting a target FPS is important because without it
  ;; Ray tries to render as many frames per-second as it can
  ;; and this eats up cpu.
  
  (set-target-fps 60) 
  
  (app-init-state)

  ;; Jump to our ui-loop
  (ui-loop))


(app)
