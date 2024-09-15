(import 
 (chezscheme)
 (ray))

(define MAX_BUILDINGS 100)
(define player (make-rectangle 400. 280. 40. 40.))
(define spacing 0)

(define camera 
  (make-camera2d 
   (make-vector2 (/ (get-screen-width) 2) (/ (get-screen-height) 2)) ;; offset 
   (make-vector2 (+ (ftype-ref Rectangle (x) player) 20) (+ (ftype-ref Rectangle (x) player) 20)) ;; target
   0 ;; rotation
   1 ;; zoom)
   ))

(define buildings (make-pod-vec Rectangle MAX_BUILDINGS))
(define build-colors (make-pod-vec Color MAX_BUILDINGS))

(define (camera-target c)
  (make-vector2 (ftype-ref Camera2D (target x) c) (ftype-ref Camera2D (target y) c)))

(define (vector-x v)
  (ftype-ref Vector2 (x) v))

(define (vector-y v)
  (ftype-ref Vector2 (y) v))

(define (core-2d-camera)
  (if (window-should-close)  ;; Has the user clicked to close the window?
      (begin
        (printf "See you back again soon!\n")
        (close-window))
      (begin
        (do ((i 0 (+ i 1))) 
            ((= i MAX_BUILDINGS) MAX_BUILDINGS)

          ;; Update buildings
          (ftype-set! Rectangle (x) buildings i (- (frand-between 50 200)))
          (ftype-set! Rectangle (y) buildings i (- (frand-between 100 800) 130))
          (ftype-set! Rectangle (width) buildings i  (frand-between 50 200))
          (ftype-set! Rectangle (height) buildings i (frand-between 100 800))

          (ftype-set! Color (r) build-colors i (rand-between 200 240))
          (ftype-set! Color (g) build-colors i (rand-between  200 240))
          (ftype-set! Color (b) build-colors i (rand-between 200 250))
          (ftype-set! Color (a) build-colors i 255)

          (set! spacing (+ spacing (ftype-ref Rectangle (width) buildings i))))


        

        (begin-drawing) ;; We begin our frame here
        (clear-background RAYWHITE)

        

        (begin-mode-2d camera)

        (draw-rectangle -6000 320 13000 8000 DARKGRAY)

        ;; (do ((i 0 (+ i 1)))
        ;;     ((= i MAX_BUILDINGS))
        ;;   (draw-rectangle-rec (vector-ref buildings i) (vector-ref build-colors i)))

        (draw-rectangle-rec player RED)

        ;; (draw-line
        ;;  (vector-x (camera-target camera)) 
        ;;  (- (get-screen-height) 10.0) 
        ;;  (vector-x (camera-target camera)) 
        ;;  (get-screen-height) GREEN)

        ;; (draw-line-ex 
        ;;  (- (get-screen-width) 10) 
        ;;  (vector-y (camera-target camera)) 
        ;;  (get-screen-width) 10 
        ;;  (vector-y (camera-target camera)) GREEN)

        (end-mode-2d)

        (draw-text "SCREEN AREA" 640 10 20 RED)

        (draw-rectangle 0 0 (get-screen-width) 5 RED)
        (draw-rectangle 0 5 5 (- (get-screen-height) 10) RED)
        (draw-rectangle (- (get-screen-width) 5) 5 5 (- (get-screen-height) 10) RED)
        (draw-rectangle 0 (- (get-screen-height) 5) (get-screen-width) 5 RED)

        ;; TODO: fade
        ;;(draw-rectangle 10 10 250 113 (fade SKYBLUE 0.5))
        (draw-rectangle-lines 10 10 250 113 BLUE)

        (draw-text "Free 2d camera controls:" 20 20 10 BLACK)
        (draw-text "- Right/Left to move Offset" 40 40 10 DARKGRAY)
        (draw-text "- Mouse Wheel to Zoom in-out" 40 60 10 DARKGRAY)
        (draw-text "- A / S to Rotate" 40 80 10 DARKGRAY)
        (draw-text "- R to reset Zoom and Rotation" 40 100 10 DARKGRAY)

        (end-drawing)
        (core-2d-camera))))

;; (if (key-down? KEY_RIGHT)
;;     (set-rectangle-x! player (+ (rectangle-x player) 2)))
;; (if (key-down? KEY_LEFT)
;;     (set-rectangle-x! player (- (rectangle-x player) 2)))

;; (set-camera-target! camera (make-vector (+ (rectangle-x player) 20) (+ (rectangle-y player) 20)))

;; (if (key-down? KEY_A)
;;     (set-camera-rotation! camera (- (camera-rotation camera) 1)))
;; (if (key-down? KEY_S)
;;     (set-camera-rotation! camera (+ (camera-rotation camera) 1)))

;; (if (> (camera-rotation camera) 40)
;;     (set-camera-rotation! camera 40))
;; (if (< (camera-rotation camera) -40)
;;     (set-camera-rotation! camera -40))

;; (set-camera-zoom! camera (+ (camera-zoom camera) (* (mouse-wheel-move) 0.05)))

;; (if (> (camera-zoom camera) 3.0)
;;     (set-camera-zoom! camera 3.0))
;; (if (< (camera-zoom camera) 0.1)
;;     (set-camera-zoom! camera 0.1))

;; (if (key-pressed? KEY_R)
;;     (begin
;;       (set-camera-zoom! camera 1.0)
;;       (set-camera-rotation! camera 0.0)))

;; (core-2d-camera)  ;; And its time to jump to next iteration of the ui-loop.
;; ))

(define (app)
  (let ((screen-width 800)
      (screen-height 450))
    ;; Create our main window
    (init-window screen-width screen-height "raylib [core] example - 2d camera")

    ;; Setting a target FPS is important because without it
    ;; Ray tries to render as many frames per-second as it can
    ;; and this eats up cpu.

    (set-target-fps 60) 
    
    ;; Jump to our ui-loop
    (core-2d-camera)))


(app)
