(import (chezscheme))

(library (ray)  
  (export
   Vector2 Vector3 Vector4 Quaternion Matrix Color make-rectangle make-color make-fvec fvec-at
   make-vector2 make-camera2d camera2d-target-set! camera2d-rotation-set! camera2d-zoom-set!
   camera2d-rotation camera2d-zoom rect-x rect-y rect-width rect-height camera2d-target-x
   camera2d-target-y camera2d-offet-x camera2d-offset-y
   frand-between rand-between Rectangle Image
   Texture Texture2D TextureCubemap RenderTexture RenderTexture2D NPatchInfo GlyphInfo
   Font Camera3D Camera Camera2D Mesh Shader MaterialMap Material Transform BoneInfo
   Model ModelAnimation Ray rAudioBuffer rAudioProcessor RayCollision BoundingBox Wave
   AudioStream Sound Music VrDeviceInfo VrStereoConfig FilePathList AutomationEvent
   AutomationEventList init-window close-window window-should-close is-window-ready
   is-window-fullscreen is-window-hidden is-window-minimized is-window-maximized
   is-window-focused is-window-resized is-window-state set-window-state clear-window-state
   toggle-fullscreen toggle-borderless-windowed maximize-window minimize-window
   restore-window set-window-icon set-window-icons set-window-title set-window-position
   set-window-monitor set-window-min-size set-window-max-size set-window-size
   set-window-opacity set-window-focused get-window-handle get-screen-width
   get-screen-height get-render-width get-render-height get-monitor-count
   get-current-monitor get-monitor-position get-monitor-width get-monitor-height
   get-monitor-physical-width get-monitor-physical-height get-monitor-refresh-rate
   get-window-position get-window-scale-dpi get-monitor-name set-clipboard-text
   get-clipboard-text enable-event-waiting disable-event-waiting show-cursor hide-cursor
   is-cursor-hidden enable-cursor disable-cursor is-cursor-on-screen clear-background
   begin-drawing end-drawing begin-mode-2d end-mode-2d begin-mode-3d end-mode-3d
   begin-texture-mode end-texture-mode begin-shader-mode end-shader-mode begin-blend-mode
   end-blend-mode begin-scissor-mode end-scissor-mode begin-vr-stereo-mode
   end-vr-stereo-mode load-vr-stereo-config unload-vr-stereo-config load-shader
   load-shader-from-memory is-shader-ready get-shader-location get-shader-location-attrib
   set-shader-value set-shader-value-v set-shader-value-matrix set-shader-value-texture
   unload-shader get-mouse-ray get-camera-matrix get-camera-matrix-2d get-world-to-screen
   get-screen-to-world-2d get-world-to-screen-ex get-world-to-screen-2d set-target-fps
   get-frame-time get-time get-fps swap-screen-buffer poll-input-events wait-time
   set-random-seed get-random-value load-random-sequence unload-random-sequence
   take-screenshot set-config-flags open-url trace-log set-trace-log-level mem-alloc
   mem-realloc mem-free set-trace-log-callback set-load-file-data-callback
   set-save-file-data-callback set-load-file-text-callback set-save-file-text-callback
   load-file-data unload-file-data save-file-data export-data-as-code load-file-text
   unload-file-text save-file-text file-exists directory-exists is-file-extension
   get-file-length get-file-extension get-file-name get-file-name-without-ext
   get-directory-path get-prev-directory-path get-working-directory
   get-application-directory change-directory is-path-file load-directory-files
   load-directory-files-ex unload-directory-files is-file-dropped load-dropped-files
   unload-dropped-files get-file-mod-time compress-data decompress-data encode-data-base64
   decode-data-base64 load-automation-event-list unload-automation-event-list
   export-automation-event-list set-automation-event-list set-automation-event-base-frame
   start-automation-event-recording stop-automation-event-recording play-automation-event
   is-key-pressed is-key-pressed-repeat is-key-down is-key-released is-key-up
   get-key-pressed get-char-pressed set-exit-key is-gamepad-available get-gamepad-name
   is-gamepad-button-pressed is-gamepad-button-down is-gamepad-button-released
   is-gamepad-button-up get-gamepad-button-pressed get-gamepad-axis-count
   get-gamepad-axis-movement set-gamepad-mappings is-mouse-button-pressed
   is-mouse-button-down is-mouse-button-released is-mouse-button-up get-mouse-x
   get-mouse-y get-mouse-position get-mouse-delta set-mouse-position set-mouse-offset
   set-mouse-scale get-mouse-wheel-move get-mouse-wheel-move-v set-mouse-cursor
   get-touch-x get-touch-y get-touch-position get-touch-point-id get-touch-point-count
   set-gestures-enabled is-gesture-detected get-gesture-detected get-gesture-hold-duration
   get-gesture-drag-vector get-gesture-drag-angle get-gesture-pinch-vector
   get-gesture-pinch-angle update-camera update-camera-pro set-shapes-texture draw-pixel
   draw-pixel-v draw-line draw-line-v draw-line-ex draw-line-strip draw-line-bezier
   draw-circle draw-circle-sector draw-circle-sector-lines draw-circle-gradient
   draw-circle-v draw-circle-lines draw-circle-lines-v draw-ellipse draw-ellipse-lines
   draw-ring draw-ring-lines draw-rectangle draw-rectangle-v draw-rectangle-rec
   draw-rectangle-pro draw-rectangle-gradient-v draw-rectangle-gradient-h
   draw-rectangle-gradient-ex draw-rectangle-lines draw-rectangle-lines-ex
   draw-rectangle-rounded draw-rectangle-rounded-lines draw-triangle draw-triangle-lines
   draw-triangle-fan draw-triangle-strip draw-poly draw-poly-lines draw-poly-lines-ex
   draw-spline-linear draw-spline-basis draw-spline-catmull-rom draw-spline-bezier-quadratic
   draw-spline-bezier-cubic draw-spline-segment-linear draw-spline-segment-basis
   raw-spline-segment-catmull-ro raw-spline-segment-bezier-quadrati
   raw-spline-segment-bezier-cubi et-spline-point-linea et-spline-point-basi
   et-spline-point-catmull-ro et-spline-point-bezier-qua et-spline-point-bezier-cubi
   heck-collision-rec heck-collision-circle heck-collision-circle-re heck-collision-point-re
   heck-collision-point-circl heck-collision-point-triangl heck-collision-point-pol
   heck-collision-line heck-collision-point-lin et-collision-re oad-imag oad-image-ra
   oad-image-sv oad-image-ani oad-image-from-memor oad-image-from-textur
   oad-image-from-scree s-image-read nload-imag export-image export-image-to-memory
   export-image-as-code gen-image-color gen-image-gradient-linear gen-image-gradient-radial
   gen-image-gradient-square gen-image-checked gen-image-white-noise gen-image-perlin-noise
   gen-image-cellular gen-image-text image-copy image-from-image image-text image-text-ex
   image-format image-to-pot image-crop image-alpha-crop image-alpha-clear image-alpha-mask
   image-alpha-premultiply image-blur-gaussian image-resize image-resize-nn
   image-resize-canvas image-mipmaps image-dither image-flip-vertical image-flip-horizontal
   image-rotate image-rotate-cw image-rotate-ccw image-color-tint image-color-invert
   image-color-grayscale image-color-contrast image-color-brightness image-color-replace
   load-image-colors load-image-palette unload-image-colors unload-image-palette
   get-image-alpha-border get-image-color image-clear-background image-draw-pixel
   image-draw-pixel-v image-draw-line image-draw-line-v image-draw-circle image-draw-circle-v
   image-draw-circle-lines image-draw-circle-lines-v image-draw-rectangle
   image-draw-rectangle-v image-draw-rectangle-rec image-draw-rectangle-lines image-draw
   image-draw-text image-draw-text-ex load-texture load-texture-from-image
   load-texture-cubemap load-render-texture is-texture-ready unload-texture
   is-render-texture-ready unload-render-texture update-texture update-texture-rec
   gen-texture-mipmaps set-texture-filter set-texture-wrap draw-texture draw-texture-v
   draw-texture-ex draw-texture-rec draw-texture-pro draw-texture-n-patch fade color-to-int
   color-normalize color-from-normalized color-to-hsv color-from-hsv color-tint
   color-brightness color-contrast color-alpha color-alpha-blend get-color get-pixel-color
   set-pixel-color get-pixel-data-size get-font-default load-font load-font-ex
   load-font-from-image load-font-from-memory is-font-ready load-font-data
   gen-image-font-atlas unload-font-data unload-font export-font-as-code draw-fps draw-text
   draw-text-ex draw-text-pro draw-text-codepoint draw-text-codepoints set-text-line-spacing
   measure-text measure-text-ex get-glyph-index get-glyph-info get-glyph-atlas-rec
   load-utf8 unload-utf8 load-codepoints unload-codepoints get-codepoint-count
   get-codepoint get-codepoint-next get-codepoint-previous codepoint-to-utf8 text-copy
   text-is-equal text-length text-subtext text-replace text-insert text-join text-split
   text-append text-find-index text-to-upper text-to-lower text-to-pascal text-to-integer
   draw-line-3d draw-point-3d draw-circle-3d draw-triangle-3d draw-triangle-strip-3d
   draw-cube draw-cube-v draw-cube-wires draw-cube-wires-v draw-sphere draw-sphere-ex
   draw-sphere-wires draw-cylinder draw-cylinder-ex draw-cylinder-wires
   draw-cylinder-wires-ex draw-capsule draw-capsule-wires draw-plane draw-ray draw-grid
   load-model load-model-from-mesh is-model-ready unload-model get-model-bounding-box
   draw-model draw-model-ex draw-model-wires draw-model-wires-ex draw-bounding-box
   draw-billboard draw-billboard-rec draw-billboard-pro upload-mesh update-mesh-buffer
   unload-mesh draw-mesh draw-mesh-instanced export-mesh get-mesh-bounding-box
   gen-mesh-tangents gen-mesh-poly gen-mesh-plane gen-mesh-cube gen-mesh-sphere
   gen-mesh-hemi-sphere gen-mesh-cylinder gen-mesh-cone gen-mesh-torus gen-mesh-knot
   gen-mesh-heightmap gen-mesh-cubicmap load-materials load-material-default
   is-material-ready unload-material set-material-texture set-model-mesh-material
   load-model-animations update-model-animation unload-model-animation
   unload-model-animations is-model-animation-valid check-collision-spheres
   check-collision-boxes check-collision-box-sphere get-ray-collision-sphere
   get-ray-collision-box get-ray-collision-mesh get-ray-collision-triangle
   get-ray-collision-quad init-audio-device close-audio-device is-audio-device-ready
   set-master-volume get-master-volume load-wave load-wave-from-memory is-wave-ready
   load-sound load-sound-from-wave load-sound-alias is-sound-ready update-sound unload-wave
   unload-sound unload-sound-alias export-wave export-wave-as-code play-sound stop-sound
   pause-sound resume-sound is-sound-playing set-sound-volume set-sound-pitch set-sound-pan
   wave-copy wave-crop wave-format load-wave-samples unload-wave-samples load-music-stream
   load-music-stream-from-memory is-music-ready unload-music-stream play-music-stream
   is-music-stream-playing update-music-stream stop-music-stream pause-music-stream
   resume-music-stream seek-music-stream set-music-volume set-music-pitch set-music-pan
   get-music-time-length get-music-time-played load-audio-stream is-audio-stream-ready
   unload-audio-stream update-audio-stream is-audio-stream-processed play-audio-stream
   pause-audio-stream resume-audio-stream is-audio-stream-playing stop-audio-stream
   set-audio-stream-volume set-audio-stream-pitch set-audio-stream-pan
   set-audio-stream-buffer-size-default set-audio-stream-callback
   attach-audio-stream-processor detach-audio-stream-processor attach-audio-mixed-processor
   detach-audio-mixed-processor FLAG_VSYNC_HINT FLAG_FULLSCREEN_MODE FLAG_WINDOW_RESIZABLE
   FLAG_WINDOW_UNDECORATED FLAG_WINDOW_HIDDEN FLAG_WINDOW_MINIMIZED FLAG_WINDOW_MAXIMIZED
   FLAG_WINDOW_UNFOCUSED FLAG_WINDOW_TOPMOST FLAG_WINDOW_ALWAYS_RUN FLAG_WINDOW_TRANSPARENT
   FLAG_WINDOW_HIGHDPI FLAG_WINDOW_MOUSE_PASSTHROUGH FLAG_BORDERLESS_WINDOWED_MODE
   FLAG_MSAA_4X_HINT FLAG_INTERLACED_HINT LOG_ALL LOG_TRACE LOG_DEBUG LOG_INFO LOG_WARNING
   LOG_ERROR LOG_FATAL LOG_NONE KEY_NULL KEY_APOSTROPHE KEY_COMMA KEY_MINUS KEY_PERIOD
   KEY_SLASH KEY_ZERO KEY_ONE KEY_TWO KEY_THREE KEY_FOUR KEY_FIVE KEY_SIX KEY_SEVEN
   KEY_EIGHT KEY_NINE KEY_SEMICOLON KEY_EQUAL KEY_A KEY_B KEY_C KEY_D KEY_E KEY_F KEY_G
   KEY_H KEY_I KEY_J KEY_K KEY_L KEY_M KEY_N KEY_O KEY_P KEY_Q KEY_R KEY_S KEY_T KEY_U
   KEY_V KEY_W KEY_X KEY_Y KEY_Z KEY_LEFT_BRACKET KEY_BACKSLASH KEY_RIGHT_BRACKET KEY_GRAVE
   KEY_SPACE KEY_ESCAPE KEY_ENTER KEY_TAB KEY_BACKSPACE KEY_INSERT KEY_DELETE KEY_RIGHT
   KEY_LEFT KEY_DOWN KEY_UP KEY_PAGE_UP KEY_PAGE_DOWN KEY_HOME KEY_END KEY_CAPS_LOCK
   KEY_SCROLL_LOCK KEY_NUM_LOCK KEY_PRINT_SCREEN KEY_PAUSE KEY_F1 KEY_F2 KEY_F3 KEY_F4
   KEY_F5 KEY_F6 KEY_F7 KEY_F8 KEY_F9 KEY_F10 KEY_F11 KEY_F12 KEY_LEFT_SHIFT
   KEY_LEFT_CONTROL KEY_LEFT_ALT KEY_LEFT_SUPER KEY_RIGHT_SHIFT KEY_RIGHT_CONTROL
   KEY_RIGHT_ALT KEY_RIGHT_SUPER KEY_KB_MENU KEY_KP_0 KEY_KP_1 KEY_KP_2 KEY_KP_3 KEY_KP_4
   KEY_KP_5 KEY_KP_6 KEY_KP_7 KEY_KP_8 KEY_KP_9 KEY_KP_DECIMAL KEY_KP_DIVIDE KEY_KP_MULTIPLY
   KEY_KP_SUBTRACT KEY_KP_ADD KEY_KP_ENTER KEY_KP_EQUAL KEY_BACK KEY_MENU KEY_VOLUME_UP
   KEY_VOLUME_DOWN MOUSE_BUTTON_LEFT MOUSE_BUTTON_RIGHT MOUSE_BUTTON_MIDDLE
   MOUSE_BUTTON_SIDE MOUSE_BUTTON_EXTRA MOUSE_BUTTON_FORWARD MOUSE_BUTTON_BACK
   MOUSE_CURSOR_DEFAULT MOUSE_CURSOR_ARROW MOUSE_CURSOR_IBEAM MOUSE_CURSOR_CROSSHAIR
   MOUSE_CURSOR_POINTING_HAND MOUSE_CURSOR_RESIZE_EW MOUSE_CURSOR_RESIZE_NS
   MOUSE_CURSOR_RESIZE_NWSE MOUSE_CURSOR_RESIZE_NESW MOUSE_CURSOR_RESIZE_ALL
   MOUSE_CURSOR_NOT_ALLOWED GAMEPAD_BUTTON_UNKNOWN GAMEPAD_BUTTON_LEFT_FACE_UP
   GAMEPAD_BUTTON_LEFT_FACE_RIGHT GAMEPAD_BUTTON_LEFT_FACE_DOWN GAMEPAD_BUTTON_LEFT_FACE_LEFT
   GAMEPAD_BUTTON_RIGHT_FACE_UP GAMEPAD_BUTTON_RIGHT_FACE_RIGHT GAMEPAD_BUTTON_RIGHT_FACE_DOWN
   GAMEPAD_BUTTON_RIGHT_FACE_LEFT GAMEPAD_BUTTON_LEFT_TRIGGER_1 GAMEPAD_BUTTON_LEFT_TRIGGER_2
   GAMEPAD_BUTTON_RIGHT_TRIGGER_1 GAMEPAD_BUTTON_RIGHT_TRIGGER_2 GAMEPAD_BUTTON_MIDDLE_LEFT
   GAMEPAD_BUTTON_MIDDLE GAMEPAD_BUTTON_MIDDLE_RIGHT GAMEPAD_BUTTON_LEFT_THUMB
   GAMEPAD_BUTTON_RIGHT_THUMB GAMEPAD_AXIS_LEFT_X GAMEPAD_AXIS_LEFT_Y GAMEPAD_AXIS_RIGHT_X
   GAMEPAD_AXIS_RIGHT_Y GAMEPAD_AXIS_LEFT_TRIGGER GAMEPAD_AXIS_RIGHT_TRIGGER
   MATERIAL_MAP_ALBEDO MATERIAL_MAP_METALNESS MATERIAL_MAP_NORMAL MATERIAL_MAP_ROUGHNESS
   MATERIAL_MAP_OCCLUSION MATERIAL_MAP_EMISSION MATERIAL_MAP_HEIGHT MATERIAL_MAP_CUBEMAP
   MATERIAL_MAP_IRRADIANCE MATERIAL_MAP_PREFILTER MATERIAL_MAP_BRDF SHADER_LOC_VERTEX_POSITION
   SHADER_LOC_VERTEX_TEXCOORD01 SHADER_LOC_VERTEX_TEXCOORD02 SHADER_LOC_VERTEX_NORMAL
   SHADER_LOC_VERTEX_TANGENT SHADER_LOC_VERTEX_COLOR SHADER_LOC_MATRIX_MVP
   SHADER_LOC_MATRIX_VIEW SHADER_LOC_MATRIX_PROJECTION SHADER_LOC_MATRIX_MODEL
   SHADER_LOC_MATRIX_NORMAL SHADER_LOC_VECTOR_VIEW SHADER_LOC_COLOR_DIFFUSE
   SHADER_LOC_COLOR_SPECULAR SHADER_LOC_COLOR_AMBIENT SHADER_LOC_MAP_ALBEDO
   SHADER_LOC_MAP_METALNESS SHADER_LOC_MAP_NORMAL SHADER_LOC_MAP_ROUGHNESS
   SHADER_LOC_MAP_OCCLUSION SHADER_LOC_MAP_EMISSION SHADER_LOC_MAP_HEIGHT
   SHADER_LOC_MAP_CUBEMAP SHADER_LOC_MAP_IRRADIANCE SHADER_LOC_MAP_PREFILTER
   SHADER_LOC_MAP_BRDF SHADER_UNIFORM_FLOAT SHADER_UNIFORM_VEC2 SHADER_UNIFORM_VEC3
   SHADER_UNIFORM_VEC4 SHADER_UNIFORM_INT SHADER_UNIFORM_IVEC2 SHADER_UNIFORM_IVEC3
   SHADER_UNIFORM_IVEC4 SHADER_UNIFORM_SAMPLER2D SHADER_ATTRIB_FLOAT SHADER_ATTRIB_VEC2
   SHADER_ATTRIB_VEC3 SHADER_ATTRIB_VEC4 PIXELFORMAT_UNCOMPRESSED_GRAYSCALE
   PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA PIXELFORMAT_UNCOMPRESSED_R5G6B5
   PIXELFORMAT_UNCOMPRESSED_R8G8B8 PIXELFORMAT_UNCOMPRESSED_R5G5B5A1
   PIXELFORMAT_UNCOMPRESSED_R4G4B4A4 PIXELFORMAT_UNCOMPRESSED_R8G8B8A8
   PIXELFORMAT_UNCOMPRESSED_R32 PIXELFORMAT_UNCOMPRESSED_R32G32B32
   PIXELFORMAT_UNCOMPRESSED_R32G32B32A32 PIXELFORMAT_UNCOMPRESSED_R16
   PIXELFORMAT_UNCOMPRESSED_R16G16B16 PIXELFORMAT_UNCOMPRESSED_R16G16B16A16
   PIXELFORMAT_COMPRESSED_DXT1_RGB PIXELFORMAT_COMPRESSED_DXT1_RGBA
   PIXELFORMAT_COMPRESSED_DXT3_RGBA PIXELFORMAT_COMPRESSED_DXT5_RGBA
   PIXELFORMAT_COMPRESSED_ETC1_RGB PIXELFORMAT_COMPRESSED_ETC2_RGB
   PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA PIXELFORMAT_COMPRESSED_PVRT_RGB
   PIXELFORMAT_COMPRESSED_PVRT_RGBA PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA
   PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA TEXTURE_FILTER_POINT TEXTURE_FILTER_BILINEAR
   TEXTURE_FILTER_TRILINEAR TEXTURE_FILTER_ANISOTROPIC_4X TEXTURE_FILTER_ANISOTROPIC_8X
   TEXTURE_FILTER_ANISOTROPIC_16X TEXTURE_WRAP_REPEAT TEXTURE_WRAP_CLAMP
   TEXTURE_WRAP_MIRROR_REPEAT TEXTURE_WRAP_MIRROR_CLAMP CUBEMAP_LAYOUT_AUTO_DETECT
   CUBEMAP_LAYOUT_LINE_VERTICAL CUBEMAP_LAYOUT_LINE_HORIZONTAL
   CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE
   CUBEMAP_LAYOUT_PANORAMA FONT_DEFAULT FONT_BITMAP FONT_SDF BLEND_ALPHA BLEND_ADDITIVE
   BLEND_MULTIPLIED BLEND_ADD_COLORS BLEND_SUBTRACT_COLORS BLEND_ALPHA_PREMULTIPLY
   BLEND_CUSTOM BLEND_CUSTOM_SEPARATE GESTURE_NONE GESTURE_TAP GESTURE_DOUBLETAP
   GESTURE_HOLD GESTURE_DRAG GESTURE_SWIPE_RIGHT GESTURE_SWIPE_LEFT GESTURE_SWIPE_UP
   GESTURE_SWIPE_DOWN GESTURE_PINCH_IN GESTURE_PINCH_OUT CAMERA_CUSTOM CAMERA_FREE
   CAMERA_ORBITAL CAMERA_FIRST_PERSON CAMERA_THIRD_PERSON CAMERA_PERSPECTIVE
   CAMERA_ORTHOGRAPHIC NPATCH_NINE_PATCH NPATCH_THREE_PATCH_VERTICAL
   NPATCH_THREE_PATCH_HORIZONTAL LIGHTGRAY GRAY DARKGRAY YELLOW GOLD ORANGE PINK RED
   MAROON GREEN LIME DARKGREEN SKYBLUE BLUE DARKBLUE PURPLE VIOLET DARKPURPLE BEIGE
   BROWN DARKBROWN WHITE BLACK BLANK MAGENTA RAYWHITE)
  (import (chezscheme))
  (define *raylib*
    (case (machine-type)
      ((i3nt  ti3nt  a6nt  ta6nt)  (load-shared-object "raylib.dll"))
      ((i3le  ti3le  a6le  ta6le)  (load-shared-object "libraylib.so"))
      ((i3osx ti3osx a6osx ta6osx) (load-shared-object "libraylib.dylib"))))



  ;; GC related routines
  (define *guardian* (make-guardian))

  ;; Register object with guardian
  ;; params: 
  ;;     obj  - object being guarded
  ;;     proc - func that will be invoked by gc to free object
  (define (register-object obj proc)
    (let [(x (cons obj proc))]
      (*guardian* x)
      x))

  ;; Simple finalizer which invokes foreign-free on the object
  ;; Assumes obj was allocated using foreign-free and was not previously freed. 
  (define (finalizer x)
    (foreign-free x))

  (define run-finalizers
    (lambda ()
      (let run ()
        (let ([x (*guardian*)])
          (when x
            (((cdr x) (car x)) 'erased)
            (run))))))

  (define-ftype Vector2
    (struct
      [x float]
      [y float]))

  (define (vector2-x v)
    (ftype-ref Vector2 (x) v))

  (define (vector2-y v)
    (ftype-ref Vector2 (y) v))


  (define-ftype Vector3
    (struct
      [x float]
      [y float]
      [z float]))

  (define-ftype Vector4
    (struct
      [x float]
      [y float]
      [z float]
      [w float]))

  (define-ftype Quaternion Vector4)

  (define-ftype Matrix
    (struct
      [m0 float] [m4 float] [m8 float] [m12 float]
      [m1 float] [m5 float] [m9 float] [m13 float]
      [m2 float] [m6 float] [m10 float] [m14 float]
      [m3 float] [m7 float] [m11 float] [m15 float]))

  (define-ftype Color
    (struct
      [r unsigned-8]
      [g unsigned-8]
      [b unsigned-8]
      [a unsigned-8]))

  (define-ftype Rectangle
    (struct
      [x float]
      [y float]
      [width float]
      [height float]))
  
  (define (rect-x r)
    (ftype-ref Rectangle (x) r))
  
  (define (rect-y r)
    (ftype-ref Rectangle (y) r))

  (define (rect-width r)
    (ftype-ref Rectangle (width) r))

  (define (rect-height r)
    (ftype-ref Rectangle (height) r))

  (define-ftype Image
    (struct
      [data void*]
      [width int]
      [height int]
      [mipmaps int]
      [format int]))

  (define-ftype Texture
    (struct
      [id unsigned-int]
      [width int]
      [height int]
      [mipmaps int]
      [format int]))

  (define-ftype Texture2D Texture)

  (define-ftype TextureCubemap Texture)

  (define-ftype RenderTexture
    (struct
      [id unsigned-int]
      [texture Texture]
      [depth Texture]))

  (define-ftype RenderTexture2D RenderTexture)

  (define-ftype NPatchInfo
    (struct
      [source Rectangle]
      [left int]
      [top int]
      [right int]
      [bottom int]
      [layout int]))

  (define-ftype GlyphInfo
    (struct
      [value int]
      [offsetX int]
      [offsetY int]
      [advanceX int]
      [image Image]))

  (define-ftype Font
    (struct
      [baseSize int]
      [glyphCount int]
      [glyphPadding int]
      [texture Texture2D]
      [recs (* Rectangle)]
      [glyphs (* GlyphInfo)]))

  (define-ftype Camera3D
    (struct
      [position Vector3]
      [target Vector3]
      [up Vector3]
      [fovy float]
      [projection int]))

  (define-ftype Camera Camera3D)

  (define-ftype Camera2D
    (struct
      [offset Vector2]
      [target Vector2]
      [rotation float]
      [zoom float]))
  
  (define (make-camera2d offset target rotation zoom)
    (let* ((c (make-ftype-pointer Camera2D (foreign-alloc (ftype-sizeof Camera2D))))
           (offset-x (ftype-&ref Camera2D (offset x) c))
           (offset-y (ftype-&ref Camera2D (offset y) c))
           (target-x (ftype-&ref Camera2D (target x) c))
           (target-y (ftype-&ref Camera2D (target y) c)))

      (ftype-set! float () offset-x (ftype-ref Vector2 (x) offset))
      (ftype-set! float () offset-y (ftype-ref Vector2 (y) target))

      (ftype-set! float () target-x (ftype-ref Vector2 (x) offset))
      (ftype-set! float () target-y (ftype-ref Vector2 (y) offset))

      (ftype-set! Camera2D (rotation) c (inexact rotation))
      (ftype-set! Camera2D (zoom) c (inexact zoom))
      (register-object c finalizer)
      c))

  (define (camera2d-target-set! c x y)
    (ftype-set! Camera2D (target x) c (inexact x))
    (ftype-set! Camera2D (target y) c (inexact y)))
  
  (define (camera2d-rotation-set! c r)
    (ftype-set! Camera2D (rotation) c (inexact r)))

  (define (camera2d-zoom-set! c z)
    (ftype-set! Camera2D (zoom) c (inexact z)))

  (define (camera2d-rotation c)
    (ftype-ref Camera2D (rotation) c))

  (define (camera2d-zoom c)
    (ftype-ref Camera2D (zoom) c))
  
  (define (camera2d-target-x c)
    (ftype-ref Camera2D (target x) c))
  
  (define (camera2d-target-y c)
    (ftype-ref Camera2D (target y) c))

  (define (camera2d-offet-x c)
    (ftype-ref Camera2D (offset x) c))
  
  (define (camera2d-offset-y c)
    (ftype-ref Camera2D (offset y) c))

  (define-ftype Mesh
    (struct
      [vertexCount int]
      [triangleCount int]
      [vertices (* float)]
      [texcoords (* float)]
      [texcoords2 (* float)]
      [normals (* float)]
      [tangents (* float)]
      [colors (* unsigned-8)]
      [indices (* unsigned-16)]
      [animVertices (* float)]
      [animNormals (* float)]
      [boneIds (* unsigned-8)]
      [boneWeights (* float)]
      [vaoId unsigned-int]
      [vboId (* unsigned-int)]))

  (define-ftype Shader
    (struct
      [id unsigned-int]
      [locs (* int)]))

  (define-ftype MaterialMap
    (struct
      [texture Texture2D]
      [color Color]
      [value float]))

  (define-ftype Material
    (struct
      [shader Shader]
      [maps (* MaterialMap)]
      [params (array 4 float)]))

  (define-ftype Transform
    (struct
      [translation Vector3]
      [rotation Quaternion]
      [scale Vector3]))

  ;; BoneInfo
  (define-ftype BoneInfo
    (struct
      [name (array 32 char)]
      [parent int]))

  ;; Model
  (define-ftype Model
    (struct
      [transform Matrix]
      [meshCount int]
      [materialCount int]
      [meshes (* Mesh)]
      [materials (* Material)]
      [meshMaterial (* int)]
      [boneCount int]
      [bones (* BoneInfo)]
      [bindPose (* Transform)]))

  ;; ModelAnimation
  (define-ftype ModelAnimation
    (struct
      [boneCount int]
      [frameCount int]
      [bones (* BoneInfo)]
      [framePoses (* (* Transform))]
      [name (array 32 char)]))

  ;; Ray
  (define-ftype rAudioBuffer void*)
  (define-ftype rAudioProcessor void*)

  (define-ftype Ray
    (struct
      [position Vector3]
      [direction Vector3]))

  ;; RayCollision
  (define-ftype RayCollision
    (struct
      [hit boolean]
      [distance float]
      [point Vector3]
      [normal Vector3]))

  ;; BoundingBox
  (define-ftype BoundingBox
    (struct
      [min Vector3]
      [max Vector3]))

  ;; Wave
  (define-ftype Wave
    (struct
      [frameCount unsigned-int]
      [sampleRate unsigned-int]
      [sampleSize unsigned-int]
      [channels unsigned-int]
      [data void*]))

  ;; AudioStream
  (define-ftype AudioStream
    (struct
      [buffer rAudioBuffer]
      [processor rAudioProcessor]
      [sampleRate unsigned-int]
      [sampleSize unsigned-int]
      [channels unsigned-int]))

  ;; Sound
  (define-ftype Sound
    (struct
      [stream AudioStream]
      [frameCount unsigned-int]))

  ;; Music
  (define-ftype Music
    (struct
      [stream AudioStream]
      [frameCount unsigned-int]
      [looping boolean]
      [ctxType int]
      [ctxData void*]))

  ;; VrDeviceInfo
  (define-ftype VrDeviceInfo
    (struct
      [hResolution int]
      [vResolution int]
      [hScreenSize float]
      [vScreenSize float]
      [vScreenCenter float]
      [eyeToScreenDistance float]
      [lensSeparationDistance float]
      [interpupillaryDistance float]
      [lensDistortionValues (array 4 float)]
      [chromaAbCorrection (array 4 float)]))

  ;; VrStereoConfig
  (define-ftype VrStereoConfig
    (struct
      [projection (array 2 Matrix)]
      [viewOffset (array 2 Matrix)]
      [leftLensCenter (array 2 float)]
      [rightLensCenter (array 2 float)]
      [leftScreenCenter (array 2 float)]
      [rightScreenCenter (array 2 float)]
      [scale (array 2 float)]
      [scaleIn (array 2 float)]))

  ;; FilePathList
  (define-ftype FilePathList
    (struct
      [capacity unsigned-int]
      [count unsigned-int]
      [paths (* (* char))]))

  ;; AutomationEvent
  (define-ftype AutomationEvent
    (struct
      [frame unsigned-int]
      [type unsigned-int]
      [params (array 4 int)]))

  ;; AutomationEventList
  (define-ftype AutomationEventList
    (struct
      [capacity unsigned-int]
      [count unsigned-int]
      [events (* AutomationEvent)]))


  ;; Constructors 
  ;; Vector2 constructor
  (define (make-vector2 x y)
    (let ((v (make-ftype-pointer Vector2 (foreign-alloc (ftype-sizeof Vector2)))))
      (ftype-set! Vector2 (x) v (inexact x))
      (ftype-set! Vector2 (y) v (inexact y))
      (register-object v finalizer)
      v))

  ;; Vector3 constructor
  (define (make-vector3 x y z)
    (let ((v (make-ftype-pointer Vector3 (foreign-alloc (ftype-sizeof Vector3)))))
      (ftype-set! Vector3 (x) v x)
      (ftype-set! Vector3 (y) v y)
      (ftype-set! Vector3 (z) v z)
      (register-object v finalizer)
      v))

  ;; Vector4 constructor
  (define (make-vector4 x y z w)
    (let ((v (make-ftype-pointer Vector4 (foreign-alloc (ftype-sizeof Vector4)))))
      (ftype-set! Vector4 (x) v x)
      (ftype-set! Vector4 (y) v y)
      (ftype-set! Vector4 (z) v z)
      (ftype-set! Vector4 (w) v w)
      (register-object v finalizer)
      v))

  ;; Quaternion constructor (same as Vector4)
  (define make-quaternion make-vector4)

  ;; Matrix constructor
  (define (make-matrix m0 m4 m8 m12 m1 m5 m9 m13 m2 m6 m10 m14 m3 m7 m11 m15)
    (let ((m (make-ftype-pointer Matrix (foreign-alloc (ftype-sizeof Matrix)))))
      (ftype-set! Matrix (m0) m m0)
      (ftype-set! Matrix (m4) m m4)
      (ftype-set! Matrix (m8) m m8)
      (ftype-set! Matrix (m12) m m12)
      (ftype-set! Matrix (m1) m m1)
      (ftype-set! Matrix (m5) m m5)
      (ftype-set! Matrix (m9) m m9)
      (ftype-set! Matrix (m13) m m13)
      (ftype-set! Matrix (m2) m m2)
      (ftype-set! Matrix (m6) m m6)
      (ftype-set! Matrix (m10) m m10)
      (ftype-set! Matrix (m14) m m14)
      (ftype-set! Matrix (m3) m m3)
      (ftype-set! Matrix (m7) m m7)
      (ftype-set! Matrix (m11) m m11)
      (ftype-set! Matrix (m15) m m15)
      (register-object m finalizer)
      m))

  ;; Rectangle constructor
  (define (make-rectangle x y width height)
    (let ((r (make-ftype-pointer Rectangle (foreign-alloc (ftype-sizeof Rectangle)))))
      (ftype-set! Rectangle (x) r x)
      (ftype-set! Rectangle (y) r y)
      (ftype-set! Rectangle (width) r width)
      (ftype-set! Rectangle (height) r height)
      (register-object r finalizer)
      r))

  ;; Image constructor
  (define (make-image data width height mipmaps format)
    (let ((i (make-ftype-pointer Image (foreign-alloc (ftype-sizeof Image)))))
      (ftype-set! Image (data) i data)
      (ftype-set! Image (width) i width)
      (ftype-set! Image (height) i height)
      (ftype-set! Image (mipmaps) i mipmaps)
      (ftype-set! Image (format) i format)
      (register-object i finalizer)
      i))

  ;; Texture constructor
  (define (make-texture id width height mipmaps format)
    (let ((t (make-ftype-pointer Texture (foreign-alloc (ftype-sizeof Texture)))))
      (ftype-set! Texture (id) t id)
      (ftype-set! Texture (width) t width)
      (ftype-set! Texture (height) t height)
      (ftype-set! Texture (mipmaps) t mipmaps)
      (ftype-set! Texture (format) t format)
      (register-object t finalizer)
      t))

  ;; Texture2D constructor (same as Texture)
  (define make-texture2d make-texture)

  ;; TextureCubemap constructor (same as Texture)
  (define make-texture-cubemap make-texture)

  ;; RenderTexture constructor
  ;; (define (make-render-texture id texture depth)
  ;;   (let ((rt (make-ftype-pointer RenderTexture (foreign-alloc (ftype-sizeof RenderTexture)))))
  ;;     (ftype-set! RenderTexture (id) rt id)
  ;;     (ftype-set! RenderTexture (texture) rt texture)
  ;;     (ftype-set! RenderTexture (depth) rt depth)
  ;;     (register-object rt finalizer)
  ;;     rt))

  ;; RenderTexture2D constructor (same as RenderTexture)
  ;;(define make-render-texture2d make-render-texture)

  ;; NPatchInfo constructor
  ;; (define (make-npatch-info source left top right bottom layout)
  ;;   (let ((np (make-ftype-pointer NPatchInfo (foreign-alloc (ftype-sizeof NPatchInfo)))))
  ;;     (ftype-set! NPatchInfo (source) np source)
  ;;     (ftype-set! NPatchInfo (left) np left)
  ;;     (ftype-set! NPatchInfo (top) np top)
  ;;     (ftype-set! NPatchInfo (right) np right)
  ;;     (ftype-set! NPatchInfo (bottom) np bottom)
  ;;     (ftype-set! NPatchInfo (layout) np layout)
  ;;     (register-object np finalizer)
  ;;     np))

  ;; ;; GlyphInfo constructor
  ;; (define (make-glyph-info value offsetX offsetY advanceX image)
  ;;   (let ((gi (make-ftype-pointer GlyphInfo (foreign-alloc (ftype-sizeof GlyphInfo)))))
  ;;     (ftype-set! GlyphInfo (value) gi value)
  ;;     (ftype-set! GlyphInfo (offsetX) gi offsetX)
  ;;     (ftype-set! GlyphInfo (offsetY) gi offsetY)
  ;;     (ftype-set! GlyphInfo (advanceX) gi advanceX)
  ;;     (ftype-set! GlyphInfo (image) gi image)
  ;;     (register-object gi finalizer)
  ;;     gi))

  ;; ;; Font constructor
  ;; (define (make-font baseSize glyphCount glyphPadding texture recs glyphs)
  ;;   (let ((f (make-ftype-pointer Font (foreign-alloc (ftype-sizeof Font)))))
  ;;     (ftype-set! Font (baseSize) f baseSize)
  ;;     (ftype-set! Font (glyphCount) f glyphCount)
  ;;     (ftype-set! Font (glyphPadding) f glyphPadding)
  ;;     (ftype-set! Font (texture) f texture)
  ;;     (ftype-set! Font (recs) f recs)
  ;;     (ftype-set! Font (glyphs) f glyphs)
  ;;     (register-object f finalizer)
  ;;     f))

  ;; ;; Camera3D constructor
  ;; (define (make-camera3d position target up fovy projection)
  ;;   (let ((c (make-ftype-pointer Camera3D (foreign-alloc (ftype-sizeof Camera3D)))))
  ;;     (ftype-set! Camera3D (position) c position)
  ;;     (ftype-set! Camera3D (target) c target)
  ;;     (ftype-set! Camera3D (up) c up)
  ;;     (ftype-set! Camera3D (fovy) c fovy)
  ;;     (ftype-set! Camera3D (projection) c projection)
  ;;     (register-object c finalizer)
  ;;     c))

  ;; ;; Camera constructor (same as Camera3D)
  ;; (define make-camera make-camera3d)

  ;; ;; Camera2D constructor
  
    

  ;; ;; Color constructor
  (define (make-color r g b a)
    (let ((c (make-ftype-pointer Color (foreign-alloc (ftype-sizeof Color)))))
      (ftype-set! Color (r) c r)
      (ftype-set! Color (g) c g)
      (ftype-set! Color (b) c b)
      (ftype-set! Color (a) c a)
      (register-object c finalizer)
      c))

  ;; ;; Mesh constructor
  ;; (define (make-mesh vertexCount triangleCount vertices texcoords texcoords2 normals tangents colors indices animVertices animNormals boneIds boneWeights vaoId vboId)
  ;;   (let ((m (make-ftype-pointer Mesh (foreign-alloc (ftype-sizeof Mesh)))))
  ;;     (ftype-set! Mesh (vertexCount) m vertexCount)
  ;;     (ftype-set! Mesh (triangleCount) m triangleCount)
  ;;     (ftype-set! Mesh (vertices) m vertices)
  ;;     (ftype-set! Mesh (texcoords) m texcoords)
  ;;     (ftype-set! Mesh (texcoords2) m texcoords2)
  ;;     (ftype-set! Mesh (normals) m normals)
  ;;     (ftype-set! Mesh (tangents) m tangents)
  ;;     (ftype-set! Mesh (colors) m colors)
  ;;     (ftype-set! Mesh (indices) m indices)
  ;;     (ftype-set! Mesh (animVertices) m animVertices)
  ;;     (ftype-set! Mesh (animNormals) m animNormals)
  ;;     (ftype-set! Mesh (boneIds) m boneIds)
  ;;     (ftype-set! Mesh (boneWeights) m boneWeights)
  ;;     (ftype-set! Mesh (vaoId) m vaoId)
  ;;     (ftype-set! Mesh (vboId) m vboId)
  ;;     (register-object m finalizer)
  ;;     m))

  ;; ;; Shader constructor
  ;; (define (make-shader id locs)
  ;;   (let ((s (make-ftype-pointer Shader (foreign-alloc (ftype-sizeof Shader)))))
  ;;     (ftype-set! Shader (id) s id)
  ;;     (ftype-set! Shader (locs) s locs)
  ;;     (register-object s finalizer)
  ;;     s))

  ;; ;; MaterialMap constructor
  ;; (define (make-material-map texture color value)
  ;;   (let ((mm (make-ftype-pointer MaterialMap (foreign-alloc (ftype-sizeof MaterialMap)))))
  ;;     (ftype-set! MaterialMap (texture) mm texture)
  ;;     (ftype-set! MaterialMap (color) mm color)
  ;;     (ftype-set! MaterialMap (value) mm value)
  ;;     (register-object mm finalizer)
  ;;     mm))

  ;; ;; Material constructor
  ;; (define (make-material shader maps params)
  ;;   (let ((m (make-ftype-pointer Material (foreign-alloc (ftype-sizeof Material)))))
  ;;     (ftype-set! Material (shader) m shader)
  ;;     (ftype-set! Material (maps) m maps)
  ;;     (ftype-set! Material (params) m params)
  ;;     (register-object m finalizer)
  ;;     m))

  ;; ;; Transform constructor
  ;; (define (make-transform translation rotation scale)
  ;;   (let ((t (make-ftype-pointer Transform (foreign-alloc (ftype-sizeof Transform)))))
  ;;     (ftype-set! Transform (translation) t translation)
  ;;     (ftype-set! Transform (rotation) t rotation)
  ;;     (ftype-set! Transform (scale) t scale)
  ;;     (register-object t finalizer)
  ;;     t))

  ;; ;; BoneInfo constructor
  ;; (define (make-bone-info name parent)
  ;;   (let ((bi (make-ftype-pointer BoneInfo (foreign-alloc (ftype-sizeof BoneInfo)))))
  ;;     (ftype-set! BoneInfo (name) bi name)
  ;;     (ftype-set! BoneInfo (parent) bi parent)
  ;;     (register-object bi finalizer)
  ;;     bi))

  ;; ;; Model constructor
  ;; (define (make-model transform meshCount materialCount meshes materials meshMaterial boneCount bones bindPose)
  ;;   (let ((m (make-ftype-pointer Model (foreign-alloc (ftype-sizeof Model)))))
  ;;     (ftype-set! Model (transform) m transform)
  ;;     (ftype-set! Model (meshCount) m meshCount)
  ;;     (ftype-set! Model (materialCount) m materialCount)
  ;;     (ftype-set! Model (meshes) m meshes)
  ;;     (ftype-set! Model (materials) m materials)
  ;;     (ftype-set! Model (meshMaterial) m meshMaterial)
  ;;     (ftype-set! Model (boneCount) m boneCount)
  ;;     (ftype-set! Model (bones) m bones)
  ;;     (ftype-set! Model (bindPose) m bindPose)
  ;;     (register-object m finalizer)
  ;;     m))

  ;; ;; ModelAnimation constructor
  ;; (define (make-model-animation boneCount frameCount bones framePoses name)
  ;;   (let ((ma (make-ftype-pointer ModelAnimation (foreign-alloc (ftype-sizeof ModelAnimation)))))
  ;;     (ftype-set! ModelAnimation (boneCount) ma boneCount)
  ;;     (ftype-set! ModelAnimation (frameCount) ma frameCount)
  ;;     (ftype-set! ModelAnimation (bones) ma bones)
  ;;     (ftype-set! ModelAnimation (framePoses) ma framePoses)
  ;;     (ftype-set! ModelAnimation (name) ma name)
  ;;     (register-object ma finalizer)
  ;;     ma))

  ;; ;; Ray constructor
  ;; (define (make-ray position direction)
  ;;   (let ((r (make-ftype-pointer Ray (foreign-alloc (ftype-sizeof Ray)))))
  ;;     (ftype-set! Ray (position) r position)
  ;;     (ftype-set! Ray (direction) r direction)
  ;;     (register-object r finalizer)
  ;;     r))

  ;; ;; RayCollision constructor
  ;; (define (make-ray-collision hit distance point normal)
  ;;   (let ((rc (make-ftype-pointer RayCollision (foreign-alloc (ftype-sizeof RayCollision)))))
  ;;     (ftype-set! RayCollision (hit) rc hit)
  ;;     (ftype-set! RayCollision (distance) rc distance)
  ;;     (ftype-set! RayCollision (point) rc point)
  ;;     (ftype-set! RayCollision (normal) rc normal)
  ;;     (register-object rc finalizer)
  ;;     rc))

  ;; ;; BoundingBox constructor
  ;; (define (make-bounding-box min max)
  ;;   (let ((bb (make-ftype-pointer BoundingBox (foreign-alloc (ftype-sizeof BoundingBox)))))
  ;;     (ftype-set! BoundingBox (min) bb min)
  ;;     (ftype-set! BoundingBox (max) bb max)
  ;;     (register-object bb finalizer)
  ;;     bb))

  ;; ;; Wave constructor
  ;; (define (make-wave frameCount sampleRate sampleSize channels data)
  ;;   (let ((w (make-ftype-pointer Wave (foreign-alloc (ftype-sizeof Wave)))))
  ;;     (ftype-set! Wave (frameCount) w frameCount)
  ;;     (ftype-set! Wave (sampleRate) w sampleRate)
  ;;     (ftype-set! Wave (sampleSize) w sampleSize)
  ;;     (ftype-set! Wave (channels) w channels)
  ;;     (ftype-set! Wave (data) w data)
  ;;     (register-object w finalizer)
  ;;     w))

  ;; ;; AudioStream constructor
  ;; (define (make-audio-stream buffer processor sampleRate sampleSize channels)
  ;;   (let ((as (make-ftype-pointer AudioStream (foreign-alloc (ftype-sizeof AudioStream)))))
  ;;     (ftype-set! AudioStream (buffer) as buffer)
  ;;     (ftype-set! AudioStream (processor) as processor)
  ;;     (ftype-set! AudioStream (sampleRate) as sampleRate)
  ;;     (ftype-set! AudioStream (sampleSize) as sampleSize)
  ;;     (ftype-set! AudioStream (channels) as channels)
  ;;     (register-object as finalizer)
  ;;     as))

  ;; ;; Sound constructor
  ;; (define (make-sound stream frameCount)
  ;;   (let ((s (make-ftype-pointer Sound (foreign-alloc (ftype-sizeof Sound)))))
  ;;     (ftype-set! Sound (stream) s stream)
  ;;     (ftype-set! Sound (frameCount) s frameCount)
  ;;     (register-object s finalizer)
  ;;     s))

  ;; ;; Music constructor
  ;; (define (make-music stream frameCount looping ctxType ctxData)
  ;;   (let ((m (make-ftype-pointer Music (foreign-alloc (ftype-sizeof Music)))))
  ;;     (ftype-set! Music (stream) m stream)
  ;;     (ftype-set! Music (frameCount) m frameCount)
  ;;     (ftype-set! Music (looping) m looping)
  ;;     (ftype-set! Music (ctxType) m ctxType)
  ;;     (ftype-set! Music (ctxData) m ctxData)
  ;;     (register-object m finalizer)
  ;;     m))

  ;; ;; VrDeviceInfo constructor
  ;; (define (make-vr-device-info hResolution vResolution hScreenSize vScreenSize vScreenCenter eyeToScreenDistance lensSeparationDistance interpupillaryDistance lensDistortionValues chromaAbCorrection)
  ;;   (let ((vdi (make-ftype-pointer VrDeviceInfo (foreign-alloc (ftype-sizeof VrDeviceInfo)))))
  ;;     (ftype-set! VrDeviceInfo (hResolution) vdi hResolution)
  ;;     (ftype-set! VrDeviceInfo (vResolution) vdi vResolution)
  ;;     (ftype-set! VrDeviceInfo (hScreenSize) vdi hScreenSize)
  ;;     (ftype-set! VrDeviceInfo (vScreenSize) vdi vScreenSize)
  ;;     (ftype-set! VrDeviceInfo (vScreenCenter) vdi vScreenCenter)
  ;;     (ftype-set! VrDeviceInfo (eyeToScreenDistance) vdi eyeToScreenDistance)
  ;;     (ftype-set! VrDeviceInfo (lensSeparationDistance) vdi lensSeparationDistance)
  ;;     (ftype-set! VrDeviceInfo (interpupillaryDistance) vdi interpupillaryDistance)
  ;;     (ftype-set! VrDeviceInfo (lensDistortionValues) vdi lensDistortionValues)
  ;;     (ftype-set! VrDeviceInfo (chromaAbCorrection) vdi chromaAbCorrection)
  ;;     (register-object vdi finalizer)
  ;;     vdi))

  ;; ;; VrStereoConfig constructor
  ;; (define (make-vr-stereo-config projection viewOffset leftLensCenter rightLensCenter leftScreenCenter rightScreenCenter scale scaleIn)
  ;;   (let ((vsc (make-ftype-pointer VrStereoConfig (foreign-alloc (ftype-sizeof VrStereoConfig)))))
  ;;     (ftype-set! VrStereoConfig (projection) vsc projection)
  ;;     (ftype-set! VrStereoConfig (viewOffset) vsc viewOffset)
  ;;     (ftype-set! VrStereoConfig (leftLensCenter) vsc leftLensCenter)
  ;;     (ftype-set! VrStereoConfig (rightLensCenter) vsc rightLensCenter)
  ;;     (ftype-set! VrStereoConfig (leftScreenCenter) vsc leftScreenCenter)
  ;;     (ftype-set! VrStereoConfig (rightScreenCenter) vsc rightScreenCenter)
  ;;     (ftype-set! VrStereoConfig (scale) vsc scale)
  ;;     (ftype-set! VrStereoConfig (scaleIn) vsc scaleIn)
  ;;     (register-object vsc finalizer)
  ;;     vsc))

  ;; ;; FilePathList constructor
  ;; (define (make-file-path-list capacity count paths)
  ;;   (let ((fpl (make-ftype-pointer FilePathList (foreign-alloc (ftype-sizeof FilePathList)))))
  ;;     (ftype-set! FilePathList (capacity) fpl capacity)
  ;;     (ftype-set! FilePathList (count) fpl count)
  ;;     (ftype-set! FilePathList (paths) fpl paths)
  ;;     (register-object fpl finalizer)
  ;;     fpl))

  ;; ;; AutomationEvent constructor
  ;; (define (make-automation-event frame type params)
  ;;   (let ((ae (make-ftype-pointer AutomationEvent (foreign-alloc (ftype-sizeof AutomationEvent)))))
  ;;     (ftype-set! AutomationEvent (frame) ae frame)
  ;;     (ftype-set! AutomationEvent (type) ae type)
  ;;     (ftype-set! AutomationEvent (params) ae params)
  ;;     (register-object ae finalizer)
  ;;     ae))

  ;; ;; AutomationEventList constructor
  ;; (define (make-automation-event-list capacity count events)
  ;;   (let ((ael (make-ftype-pointer AutomationEventList (foreign-alloc (ftype-sizeof AutomationEventList)))))
  ;;     (ftype-set! AutomationEventList (capacity) ael capacity)
  ;;     (ftype-set! AutomationEventList (count) ael count)
  ;;     (ftype-set! AutomationEventList (events) ael events)
  ;;     (register-object ael finalizer)
  ;;     ael))


  ;; Sequences
  (define-syntax make-fvec
    (lambda (stx)
      (syntax-case stx ()
        ((_ type num-elements)
         #'(let ((fptr (make-ftype-pointer type (foreign-alloc (* num-elements (ftype-sizeof type))))))
             (register-object fptr finalizer)
             fptr)))))

  (define-syntax fvec-at
    (lambda (stx)
      (syntax-case stx ()
        ((_ ftype v idx)
         #'(make-ftype-pointer ftype (+ (ftype-pointer-address v) (* idx (ftype-sizeof ftype))))))))
  
  (define init-window
    (foreign-procedure "InitWindow" (int int string) void))

  (define close-window
    (foreign-procedure "CloseWindow" () void))

  (define window-should-close
    (foreign-procedure "WindowShouldClose" () boolean))

  (define is-window-ready
    (foreign-procedure "IsWindowReady" () boolean))

  (define is-window-fullscreen
    (foreign-procedure "IsWindowFullscreen" () boolean))

  (define is-window-hidden
    (foreign-procedure "IsWindowHidden" () boolean))

  (define is-window-minimized
    (foreign-procedure "IsWindowMinimized" () boolean))

  (define is-window-maximized
    (foreign-procedure "IsWindowMaximized" () boolean))

  (define is-window-focused
    (foreign-procedure "IsWindowFocused" () boolean))

  (define is-window-resized
    (foreign-procedure "IsWindowResized" () boolean))

  (define is-window-state
    (foreign-procedure "IsWindowState" (unsigned-int) boolean))

  (define set-window-state
    (foreign-procedure "SetWindowState" (unsigned-int) void))

  (define clear-window-state
    (foreign-procedure "ClearWindowState" (unsigned-int) void))

  (define toggle-fullscreen
    (foreign-procedure "ToggleFullscreen" () void))

  (define toggle-borderless-windowed
    (foreign-procedure "ToggleBorderlessWindowed" () void))

  (define maximize-window
    (foreign-procedure "MaximizeWindow" () void))

  (define minimize-window
    (foreign-procedure "MinimizeWindow" () void))

  (define restore-window
    (foreign-procedure "RestoreWindow" () void))

  (define set-window-icon
    (foreign-procedure "SetWindowIcon" ((& Image)) void))

  (define set-window-icons
    (foreign-procedure "SetWindowIcons" ((* Image) int) void))

  (define set-window-title
    (foreign-procedure "SetWindowTitle" (string) void))

  (define set-window-position
    (foreign-procedure "SetWindowPosition" (int int) void))

  (define set-window-monitor
    (foreign-procedure "SetWindowMonitor" (int) void))

  (define set-window-min-size
    (foreign-procedure "SetWindowMinSize" (int int) void))

  (define set-window-max-size
    (foreign-procedure "SetWindowMaxSize" (int int) void))

  (define set-window-size
    (foreign-procedure "SetWindowSize" (int int) void))

  (define set-window-opacity
    (foreign-procedure "SetWindowOpacity" (float) void))

  (define set-window-focused
    (foreign-procedure "SetWindowFocused" () void))

  (define get-window-handle
    (foreign-procedure "GetWindowHandle" () void*))

  (define get-screen-width
    (foreign-procedure "GetScreenWidth" () int))

  (define get-screen-height
    (foreign-procedure "GetScreenHeight" () int))

  (define get-render-width
    (foreign-procedure "GetRenderWidth" () int))

  (define get-render-height
    (foreign-procedure "GetRenderHeight" () int))

  (define get-monitor-count
    (foreign-procedure "GetMonitorCount" () int))

  (define get-current-monitor
    (foreign-procedure "GetCurrentMonitor" () int))

  (define get-monitor-position
    (foreign-procedure "GetMonitorPosition" (int) (& Vector2)))

  (define get-monitor-width
    (foreign-procedure "GetMonitorWidth" (int) int))

  (define get-monitor-height
    (foreign-procedure "GetMonitorHeight" (int) int))

  (define get-monitor-physical-width
    (foreign-procedure "GetMonitorPhysicalWidth" (int) int))

  (define get-monitor-physical-height
    (foreign-procedure "GetMonitorPhysicalHeight" (int) int))

  (define get-monitor-refresh-rate
    (foreign-procedure "GetMonitorRefreshRate" (int) int))

  (define get-window-position
    (foreign-procedure "GetWindowPosition" () (& Vector2)))

  (define get-window-scale-dpi
    (foreign-procedure "GetWindowScaleDPI" () (& Vector2)))

  (define get-monitor-name
    (foreign-procedure "GetMonitorName" (int) string))

  (define set-clipboard-text
    (foreign-procedure "SetClipboardText" (string) void))

  (define get-clipboard-text
    (foreign-procedure "GetClipboardText" () string))

  (define enable-event-waiting
    (foreign-procedure "EnableEventWaiting" () void))

  (define disable-event-waiting
    (foreign-procedure "DisableEventWaiting" () void))

  (define show-cursor
    (foreign-procedure "ShowCursor" () void))

  (define hide-cursor
    (foreign-procedure "HideCursor" () void))

  (define is-cursor-hidden
    (foreign-procedure "IsCursorHidden" () boolean))

  (define enable-cursor
    (foreign-procedure "EnableCursor" () void))

  (define disable-cursor
    (foreign-procedure "DisableCursor" () void))

  (define is-cursor-on-screen
    (foreign-procedure "IsCursorOnScreen" () boolean))

  (define clear-background
    (foreign-procedure "ClearBackground" ((& Color)) void))

  (define begin-drawing
    (foreign-procedure "BeginDrawing" () void))

  (define end-drawing
    (foreign-procedure "EndDrawing" () void))

  (define begin-mode-2d
    (foreign-procedure "BeginMode2D" ((& Camera2D)) void))

  (define end-mode-2d
    (foreign-procedure "EndMode2D" () void))

  (define begin-mode-3d
    (foreign-procedure "BeginMode3D" ((& Camera3D)) void))

  (define end-mode-3d
    (foreign-procedure "EndMode3D" () void))

  (define begin-texture-mode
    (foreign-procedure "BeginTextureMode" ((& RenderTexture2D)) void))

  (define end-texture-mode
    (foreign-procedure "EndTextureMode" () void))

  (define begin-shader-mode
    (foreign-procedure "BeginShaderMode" ((& Shader)) void))

  (define end-shader-mode
    (foreign-procedure "EndShaderMode" () void))

  (define begin-blend-mode
    (foreign-procedure "BeginBlendMode" (int) void))

  (define end-blend-mode
    (foreign-procedure "EndBlendMode" () void))

  (define begin-scissor-mode
    (foreign-procedure "BeginScissorMode" (int int int int) void))

  (define end-scissor-mode
    (foreign-procedure "EndScissorMode" () void))

  (define begin-vr-stereo-mode
    (foreign-procedure "BeginVrStereoMode" ((& VrStereoConfig)) void))

  (define end-vr-stereo-mode
    (foreign-procedure "EndVrStereoMode" () void))

  ;; VR stereo config functions
  (define load-vr-stereo-config
    (foreign-procedure "LoadVrStereoConfig" ((& VrDeviceInfo)) (& VrStereoConfig)))

  (define unload-vr-stereo-config
    (foreign-procedure "UnloadVrStereoConfig" ((& VrStereoConfig)) void))

  ;; Shader management functions
  (define load-shader
    (foreign-procedure "LoadShader" (string string) (& Shader)))

  (define load-shader-from-memory
    (foreign-procedure "LoadShaderFromMemory" (string string) (& Shader)))

  (define is-shader-ready
    (foreign-procedure "IsShaderReady" ((& Shader)) boolean))

  (define get-shader-location
    (foreign-procedure "GetShaderLocation" ((& Shader) string) int))

  (define get-shader-location-attrib
    (foreign-procedure "GetShaderLocationAttrib" ((& Shader) string) int))

  (define set-shader-value
    (foreign-procedure "SetShaderValue" ((& Shader) int void* int) void))

  (define set-shader-value-v
    (foreign-procedure "SetShaderValueV" ((& Shader) int void* int int) void))

  (define set-shader-value-matrix
    (foreign-procedure "SetShaderValueMatrix" ((& Shader) int (& Matrix)) void))

  (define set-shader-value-texture
    (foreign-procedure "SetShaderValueTexture" ((& Shader) int (& Texture2D)) void))

  (define unload-shader
    (foreign-procedure "UnloadShader" ((& Shader)) void))

  ;; Screen-space-related functions
  (define get-mouse-ray
    (foreign-procedure "GetMouseRay" ((& Vector2) (& Camera)) (& Ray)))

  (define get-camera-matrix
    (foreign-procedure "GetCameraMatrix" ((& Camera)) (& Matrix)))

  (define get-camera-matrix-2d
    (foreign-procedure "GetCameraMatrix2D" ((& Camera2D)) (& Matrix)))

  (define get-world-to-screen
    (foreign-procedure "GetWorldToScreen" ((& Vector3) (& Camera)) (& Vector2)))

  (define get-screen-to-world-2d
    (foreign-procedure "GetScreenToWorld2D" ((& Vector2) (& Camera2D)) (& Vector2)))

  (define get-world-to-screen-ex
    (foreign-procedure "GetWorldToScreenEx" ((& Vector3) (& Camera) int int) (& Vector2)))

  (define get-world-to-screen-2d
    (foreign-procedure "GetWorldToScreen2D" ((& Vector2) (& Camera2D)) (& Vector2)))

  ;; Timing-related functions
  (define set-target-fps
    (foreign-procedure "SetTargetFPS" (int) void))

  (define get-frame-time
    (foreign-procedure "GetFrameTime" () float))

  (define get-time
    (foreign-procedure "GetTime" () double))

  (define get-fps
    (foreign-procedure "GetFPS" () int))

  ;; Custom frame control functions
  (define swap-screen-buffer
    (foreign-procedure "SwapScreenBuffer" () void))

  (define poll-input-events
    (foreign-procedure "PollInputEvents" () void))

  (define wait-time
    (foreign-procedure "WaitTime" (double) void))

  ;; Random values generation functions
  (define set-random-seed
    (foreign-procedure "SetRandomSeed" (unsigned-int) void))

  (define get-random-value
    (foreign-procedure "GetRandomValue" (int int) int))

  (define load-random-sequence
    (foreign-procedure "LoadRandomSequence" (unsigned-int int int) (* int)))

  (define unload-random-sequence
    (foreign-procedure "UnloadRandomSequence" ((* int)) void))

  ;; Misc. functions
  (define take-screenshot
    (foreign-procedure "TakeScreenshot" (string) void))

  (define set-config-flags
    (foreign-procedure "SetConfigFlags" (unsigned-int) void))

  ;; Open URL with default system browser
  (define open-url
    (foreign-procedure "OpenURL" (string) void))

  ;; Trace log messages
  (define trace-log
    (foreign-procedure "TraceLog" (int string) void))

  ;; Set the current threshold (minimum) log level
  (define set-trace-log-level
    (foreign-procedure "SetTraceLogLevel" (int) void))

  ;; Internal memory allocator
  (define mem-alloc
    (foreign-procedure "MemAlloc" (unsigned-int) void*))

  ;; Internal memory reallocator
  (define mem-realloc
    (foreign-procedure "MemRealloc" (void* unsigned-int) void*))

  ;; Internal memory free
  (define mem-free
    (foreign-procedure "MemFree" (void*) void))

  ;; Set custom trace log
  (define set-trace-log-callback
    (foreign-procedure "SetTraceLogCallback" (void*) void))

  ;; Set custom file binary data loader
  (define set-load-file-data-callback
    (foreign-procedure "SetLoadFileDataCallback" (void*) void))

  ;; Set custom file binary data saver
  (define set-save-file-data-callback
    (foreign-procedure "SetSaveFileDataCallback" (void*) void))

  ;; Set custom file text data loader
  (define set-load-file-text-callback
    (foreign-procedure "SetLoadFileTextCallback" (void*) void))

  ;; Set custom file text data saver
  (define set-save-file-text-callback
    (foreign-procedure "SetSaveFileTextCallback" (void*) void))

  ;; Load file data as byte array (read)
  (define load-file-data
    (foreign-procedure "LoadFileData" (string void*) string))

  ;; Unload file data allocated by LoadFileData()
  (define unload-file-data
    (foreign-procedure "UnloadFileData" (string) void))

  ;; Save data to file from byte array (write)
  (define save-file-data
    (foreign-procedure "SaveFileData" (string void* int) boolean))

  ;; Export data to code (.h)
  (define export-data-as-code
    (foreign-procedure "ExportDataAsCode" (string int string) boolean))

  ;; Load text data from file (read)
  (define load-file-text
    (foreign-procedure "LoadFileText" (string) string))

  ;; Unload file text data allocated by LoadFileText()
  (define unload-file-text
    (foreign-procedure "UnloadFileText" (string) void))

  ;; Save text data to file (write)
  (define save-file-text
    (foreign-procedure "SaveFileText" (string string) boolean))

  ;; File system functions
  (define file-exists
    (foreign-procedure "FileExists" (string) boolean))

  (define directory-exists
    (foreign-procedure "DirectoryExists" (string) boolean))

  (define is-file-extension
    (foreign-procedure "IsFileExtension" (string string) boolean))

  (define get-file-length
    (foreign-procedure "GetFileLength" (string) int))

  (define get-file-extension
    (foreign-procedure "GetFileExtension" (string) string))

  (define get-file-name
    (foreign-procedure "GetFileName" (string) string))

  (define get-file-name-without-ext
    (foreign-procedure "GetFileNameWithoutExt" (string) string))

  (define get-directory-path
    (foreign-procedure "GetDirectoryPath" (string) string))

  (define get-prev-directory-path
    (foreign-procedure "GetPrevDirectoryPath" (string) string))

  (define get-working-directory
    (foreign-procedure "GetWorkingDirectory" () string))

  (define get-application-directory
    (foreign-procedure "GetApplicationDirectory" () string))

  (define change-directory
    (foreign-procedure "ChangeDirectory" (string) boolean))

  (define is-path-file
    (foreign-procedure "IsPathFile" (string) boolean))

  (define load-directory-files
    (foreign-procedure "LoadDirectoryFiles" (string) (& FilePathList)))

  (define load-directory-files-ex
    (foreign-procedure "LoadDirectoryFilesEx" (string string boolean) (& FilePathList)))

  (define unload-directory-files
    (foreign-procedure "UnloadDirectoryFiles" ((& FilePathList)) void))

  (define is-file-dropped
    (foreign-procedure "IsFileDropped" () boolean))

  (define load-dropped-files
    (foreign-procedure "LoadDroppedFiles" () (& FilePathList)))

  (define unload-dropped-files
    (foreign-procedure "UnloadDroppedFiles" ((& FilePathList)) void))

  (define get-file-mod-time
    (foreign-procedure "GetFileModTime" (string) long))

  ;; Compression/Encoding functionality
  (define compress-data
    (foreign-procedure "CompressData" (u8* int (* int)) u8*))

  (define decompress-data
    (foreign-procedure "DecompressData" (u8* int (* int)) u8*))

  (define encode-data-base64
    (foreign-procedure "EncodeDataBase64" (u8* int (* int)) string))

  (define decode-data-base64
    (foreign-procedure "DecodeDataBase64" (string (* int)) u8*))

  ;; Automation events functionality
  (define load-automation-event-list
    (foreign-procedure "LoadAutomationEventList" (string) (& AutomationEventList)))

  (define unload-automation-event-list
    (foreign-procedure "UnloadAutomationEventList" ((* AutomationEventList)) void))

  (define export-automation-event-list
    (foreign-procedure "ExportAutomationEventList" ((& AutomationEventList) string) boolean))

  (define set-automation-event-list
    (foreign-procedure "SetAutomationEventList" ((* AutomationEventList)) void))

  (define set-automation-event-base-frame
    (foreign-procedure "SetAutomationEventBaseFrame" (int) void))

  (define start-automation-event-recording
    (foreign-procedure "StartAutomationEventRecording" () void))

  (define stop-automation-event-recording
    (foreign-procedure "StopAutomationEventRecording" () void))

  (define play-automation-event
    (foreign-procedure "PlayAutomationEvent" ((& AutomationEvent)) void))

  ;; Input-related functions: keyboard
  
  (define is-key-pressed-raw
    (foreign-procedure "IsKeyPressed" (int) unsigned-8))

  (define (is-key-pressed keycode)
    (let 
        ((v (is-key-pressed-raw keycode)))
      (not (= v 0))))

  (define is-key-pressed-repeat
    (foreign-procedure "IsKeyPressedRepeat" (int) boolean))

  (define is-key-down-raw
    (foreign-procedure "IsKeyDown" (int) unsigned-8))
    
  (define (is-key-down keycode)
    (let 
        ((v (is-key-down-raw keycode)))
      (not (= v 0))))
  
  (define is-key-released
    (foreign-procedure "IsKeyReleased" (int) boolean))

  (define is-key-up
    (foreign-procedure "IsKeyUp" (int) boolean))

  (define get-key-pressed
    (foreign-procedure "GetKeyPressed" () int))

  (define get-char-pressed
    (foreign-procedure "GetCharPressed" () int))

  (define set-exit-key
    (foreign-procedure "SetExitKey" (int) void))

  ;; Input-related functions: gamepads
  (define is-gamepad-available
    (foreign-procedure "IsGamepadAvailable" (int) boolean))

  (define get-gamepad-name
    (foreign-procedure "GetGamepadName" (int) string))

  (define is-gamepad-button-pressed
    (foreign-procedure "IsGamepadButtonPressed" (int int) boolean))

  (define is-gamepad-button-down
    (foreign-procedure "IsGamepadButtonDown" (int int) boolean))

  (define is-gamepad-button-released
    (foreign-procedure "IsGamepadButtonReleased" (int int) boolean))

  (define is-gamepad-button-up
    (foreign-procedure "IsGamepadButtonUp" (int int) boolean))

  (define get-gamepad-button-pressed
    (foreign-procedure "GetGamepadButtonPressed" () int))

  (define get-gamepad-axis-count
    (foreign-procedure "GetGamepadAxisCount" (int) int))

  (define get-gamepad-axis-movement
    (foreign-procedure "GetGamepadAxisMovement" (int int) float))

  (define set-gamepad-mappings
    (foreign-procedure "SetGamepadMappings" (string) int))

  ;; Input-related functions: mouse
  (define is-mouse-button-pressed
    (foreign-procedure "IsMouseButtonPressed" (int) boolean))

  (define is-mouse-button-down
    (foreign-procedure "IsMouseButtonDown" (int) boolean))

  (define is-mouse-button-released
    (foreign-procedure "IsMouseButtonReleased" (int) boolean))

  (define is-mouse-button-up
    (foreign-procedure "IsMouseButtonUp" (int) boolean))

  (define get-mouse-x
    (foreign-procedure "GetMouseX" () int))

  (define get-mouse-y
    (foreign-procedure "GetMouseY" () int))

  (define get-mouse-position
    (foreign-procedure "GetMousePosition" () (& Vector2)))

  (define get-mouse-delta
    (foreign-procedure "GetMouseDelta" () (& Vector2)))

  (define set-mouse-position
    (foreign-procedure "SetMousePosition" (int int) void))

  (define set-mouse-offset
    (foreign-procedure "SetMouseOffset" (int int) void))

  (define set-mouse-scale
    (foreign-procedure "SetMouseScale" (float float) void))

  (define get-mouse-wheel-move
    (foreign-procedure "GetMouseWheelMove" () float))

  (define get-mouse-wheel-move-v
    (foreign-procedure "GetMouseWheelMoveV" () (& Vector2)))

  (define set-mouse-cursor
    (foreign-procedure "SetMouseCursor" (int) void))

  ;; Input-related functions: touch
  (define get-touch-x
    (foreign-procedure "GetTouchX" () int))

  (define get-touch-y
    (foreign-procedure "GetTouchY" () int))

  (define get-touch-position
    (foreign-procedure "GetTouchPosition" (int) (& Vector2)))

  (define get-touch-point-id
    (foreign-procedure "GetTouchPointId" (int) int))

  (define get-touch-point-count
    (foreign-procedure "GetTouchPointCount" () int))

  ;; Gesture and Touch Handling functions
  (define set-gestures-enabled
    (foreign-procedure "SetGesturesEnabled" (unsigned-int) void))

  (define is-gesture-detected
    (foreign-procedure "IsGestureDetected" (unsigned-int) boolean))

  (define get-gesture-detected
    (foreign-procedure "GetGestureDetected" () int))

  (define get-gesture-hold-duration
    (foreign-procedure "GetGestureHoldDuration" () float))

  (define get-gesture-drag-vector
    (foreign-procedure "GetGestureDragVector" () (& Vector2)))

  (define get-gesture-drag-angle
    (foreign-procedure "GetGestureDragAngle" () float))

  (define get-gesture-pinch-vector
    (foreign-procedure "GetGesturePinchVector" () (& Vector2)))

  (define get-gesture-pinch-angle
    (foreign-procedure "GetGesturePinchAngle" () float))

  ;; Camera System functions
  (define update-camera
    (foreign-procedure "UpdateCamera" ((* Camera) int) void))

  (define update-camera-pro
    (foreign-procedure "UpdateCameraPro" ((* Camera) (& Vector3) (& Vector3) float) void))

  ;; Basic Shapes Drawing functions
  (define set-shapes-texture
    (foreign-procedure "SetShapesTexture" ((& Texture2D) (& Rectangle)) void))

  (define draw-pixel
    (foreign-procedure "DrawPixel" (int int (& Color)) void))

  (define draw-pixel-v
    (foreign-procedure "DrawPixelV" ((& Vector2) (& Color)) void))

  (define draw-line-raw
    (foreign-procedure "DrawLine" (int int int int (& Color)) void))

  (define (draw-line p1 p2 p3 p4 color)
    (printf "draw-line ~a ~a ~a ~a\n" p1 p2 p3 p4)
    (draw-line-raw (inexact->exact p1) (inexact->exact p2) (inexact->exact p3) (inexact->exact p4) color))

  (define draw-line-v
    (foreign-procedure "DrawLineV" ((& Vector2) (& Vector2) (& Color)) void))

  (define draw-line-ex
    (foreign-procedure "DrawLineEx" ((& Vector2) (& Vector2) float (& Color)) void))

  (define draw-line-strip
    (foreign-procedure "DrawLineStrip" ((* Vector2) int (& Color)) void))

  (define draw-line-bezier
    (foreign-procedure "DrawLineBezier" ((& Vector2) (& Vector2) float (& Color)) void))

  (define draw-circle
    (foreign-procedure "DrawCircle" (int int float (& Color)) void))

  (define draw-circle-sector
    (foreign-procedure "DrawCircleSector" ((& Vector2) float float float int (& Color)) void))

  (define draw-circle-sector-lines
    (foreign-procedure "DrawCircleSectorLines" ((& Vector2) float float float int (& Color)) void))

  (define draw-circle-gradient
    (foreign-procedure "DrawCircleGradient" (int int float (& Color) (& Color)) void))

  (define draw-circle-v
    (foreign-procedure "DrawCircleV" ((& Vector2) float (& Color)) void))

  (define draw-circle-lines
    (foreign-procedure "DrawCircleLines" (int int float (& Color)) void))

  (define draw-circle-lines-v
    (foreign-procedure "DrawCircleLinesV" ((& Vector2) float (& Color)) void))

  (define draw-ellipse
    (foreign-procedure "DrawEllipse" (int int float float (& Color)) void))

  (define draw-ellipse-lines
    (foreign-procedure "DrawEllipseLines" (int int float float (& Color)) void))

  (define draw-ring
    (foreign-procedure "DrawRing" ((& Vector2) float float float float int (& Color)) void))

  (define draw-ring-lines
    (foreign-procedure "DrawRingLines" ((& Vector2) float float float float int (& Color)) void))

  (define draw-rectangle
    (foreign-procedure "DrawRectangle" (int int int int (& Color)) void))

  (define draw-rectangle-v
    (foreign-procedure "DrawRectangleV" ((& Vector2) (& Vector2) (& Color)) void))

  (define draw-rectangle-rec
    (foreign-procedure "DrawRectangleRec" ((& Rectangle) (& Color)) void))

  (define draw-rectangle-pro
    (foreign-procedure "DrawRectanglePro" ((& Rectangle) (& Vector2) float (& Color)) void))

  (define draw-rectangle-gradient-v
    (foreign-procedure "DrawRectangleGradientV" (int int int int (& Color) (& Color)) void))

  (define draw-rectangle-gradient-h
    (foreign-procedure "DrawRectangleGradientH" (int int int int (& Color) (& Color)) void))

  (define draw-rectangle-gradient-ex
    (foreign-procedure "DrawRectangleGradientEx" ((& Rectangle) (& Color) (& Color) (& Color) (& Color)) void))

  (define draw-rectangle-lines
    (foreign-procedure "DrawRectangleLines" (int int int int (& Color)) void))

  (define draw-rectangle-lines-ex
    (foreign-procedure "DrawRectangleLinesEx" ((& Rectangle) float (& Color)) void))

  (define draw-rectangle-rounded
    (foreign-procedure "DrawRectangleRounded" ((& Rectangle) float int (& Color)) void))

  (define draw-rectangle-rounded-lines
    (foreign-procedure "DrawRectangleRoundedLines" ((& Rectangle) float int float (& Color)) void))

  (define draw-triangle
    (foreign-procedure "DrawTriangle" ((& Vector2) (& Vector2) (& Vector2) (& Color)) void))

  (define draw-triangle-lines
    (foreign-procedure "DrawTriangleLines" ((& Vector2) (& Vector2) (& Vector2) (& Color)) void))

  (define draw-triangle-fan
    (foreign-procedure "DrawTriangleFan" ((* Vector2) int (& Color)) void))

  (define draw-triangle-strip
    (foreign-procedure "DrawTriangleStrip" ((* Vector2) int (& Color)) void))

  (define draw-poly
    (foreign-procedure "DrawPoly" ((& Vector2) int float float (& Color)) void))

  (define draw-poly-lines
    (foreign-procedure "DrawPolyLines" ((& Vector2) int float float (& Color)) void))

  (define draw-poly-lines-ex
    (foreign-procedure "DrawPolyLinesEx" ((& Vector2) int float float float (& Color)) void))

  ;; Spline drawing functions
  (define draw-spline-linear
    (foreign-procedure "DrawSplineLinear" ((* Vector2) int float (& Color)) void))

  (define draw-spline-basis
    (foreign-procedure "DrawSplineBasis" ((* Vector2) int float (& Color)) void))

  (define draw-spline-catmull-rom
    (foreign-procedure "DrawSplineCatmullRom" ((* Vector2) int float (& Color)) void))

  (define draw-spline-bezier-quadratic
    (foreign-procedure "DrawSplineBezierQuadratic" ((* Vector2) int float (& Color)) void))

  (define draw-spline-bezier-cubic
    (foreign-procedure "DrawSplineBezierCubic" ((* Vector2) int float (& Color)) void))

  (define draw-spline-segment-linear
    (foreign-procedure "DrawSplineSegmentLinear" ((& Vector2) (& Vector2) float (& Color)) void))

  (define draw-spline-segment-basis
    (foreign-procedure "DrawSplineSegmentBasis" ((& Vector2) (& Vector2) (& Vector2) (& Vector2) float (& Color)) void))

  (define raw-spline-segment-catmull-ro
    (foreign-procedure "DrawSplineSegmentCatmullRom" ((& Vector2) (& Vector2) (& Vector2) (& Vector2) float (& Color)) void))

  (define raw-spline-segment-bezier-quadrati
    (foreign-procedure "DrawSplineSegmentBezierQuadratic" ((& Vector2) (& Vector2) (& Vector2) float (& Color)) void))

  (define raw-spline-segment-bezier-cubi
    (foreign-procedure "DrawSplineSegmentBezierCubic" ((& Vector2) (& Vector2) (& Vector2) (& Vector2) float (& Color)) void))

  ;; Spline point evaluation functions
  (define et-spline-point-linea
    (foreign-procedure "GetSplinePointLinear" ((& Vector2) (& Vector2) float) (& Vector2)))

  (define et-spline-point-basi
    (foreign-procedure "GetSplinePointBasis" ((& Vector2) (& Vector2) (& Vector2) (& Vector2) float) (& Vector2)))

  (define et-spline-point-catmull-ro
    (foreign-procedure "GetSplinePointCatmullRom" ((& Vector2) (& Vector2) (& Vector2) (& Vector2) float) (& Vector2)))

  (define et-spline-point-bezier-qua
    (foreign-procedure "GetSplinePointBezierQuad" ((& Vector2) (& Vector2) (& Vector2) float) (& Vector2)))

  (define et-spline-point-bezier-cubi
    (foreign-procedure "GetSplinePointBezierCubic" ((& Vector2) (& Vector2) (& Vector2) (& Vector2) float) (& Vector2)))

  ;; Collision detection functions
  (define heck-collision-rec
    (foreign-procedure "CheckCollisionRecs" ((& Rectangle) (& Rectangle)) boolean))

  (define heck-collision-circle
    (foreign-procedure "CheckCollisionCircles" ((& Vector2) float (& Vector2) float) boolean))

  (define heck-collision-circle-re
    (foreign-procedure "CheckCollisionCircleRec" ((& Vector2) float (& Rectangle)) boolean))

  (define heck-collision-point-re
    (foreign-procedure "CheckCollisionPointRec" ((& Vector2) (& Rectangle)) boolean))

  (define heck-collision-point-circl
    (foreign-procedure "CheckCollisionPointCircle" ((& Vector2) (& Vector2) float) boolean))

  (define heck-collision-point-triangl
    (foreign-procedure "CheckCollisionPointTriangle" ((& Vector2) (& Vector2) (& Vector2) (& Vector2)) boolean))

  (define heck-collision-point-pol
    (foreign-procedure "CheckCollisionPointPoly" ((& Vector2) (* Vector2) int) boolean))

  (define heck-collision-line
    (foreign-procedure "CheckCollisionLines" ((& Vector2) (& Vector2) (& Vector2) (& Vector2) (* Vector2)) boolean))

  (define heck-collision-point-lin
    (foreign-procedure "CheckCollisionPointLine" ((& Vector2) (& Vector2) (& Vector2) int) boolean))

  (define et-collision-re
    (foreign-procedure "GetCollisionRec" ((& Rectangle) (& Rectangle)) (& Rectangle)))

  ;; Image loading functions
  (define oad-imag
    (foreign-procedure "LoadImage" (string) (& Image)))

  (define oad-image-ra
    (foreign-procedure "LoadImageRaw" (string int int int int) (& Image)))

  (define oad-image-sv
    (foreign-procedure "LoadImageSvg" (string int int) (& Image)))

  (define oad-image-ani
    (foreign-procedure "LoadImageAnim" (string (* int)) (& Image)))

  (define oad-image-from-memor
    (foreign-procedure "LoadImageFromMemory" (string u8* int) (& Image)))

  (define oad-image-from-textur
    (foreign-procedure "LoadImageFromTexture" ((& Texture2D)) (& Image)))

  (define oad-image-from-scree
    (foreign-procedure "LoadImageFromScreen" () (& Image)))

  (define s-image-read
    (foreign-procedure "IsImageReady" ((& Image)) boolean))

  (define nload-imag
    (foreign-procedure "UnloadImage" ((& Image)) void))

  (define export-image
    (foreign-procedure "ExportImage" ((& Image) string) boolean))

  (define export-image-to-memory
    (foreign-procedure "ExportImageToMemory" ((& Image) string (* int)) string))

  (define export-image-as-code
    (foreign-procedure "ExportImageAsCode" ((& Image) string) boolean))

  (define gen-image-color
    (foreign-procedure "GenImageColor" (int int (& Color)) (& Image)))

  (define gen-image-gradient-linear
    (foreign-procedure "GenImageGradientLinear" (int int int (& Color) (& Color)) (& Image)))

  (define gen-image-gradient-radial
    (foreign-procedure "GenImageGradientRadial" (int int float (& Color) (& Color)) (& Image)))

  (define gen-image-gradient-square
    (foreign-procedure "GenImageGradientSquare" (int int float (& Color) (& Color)) (& Image)))

  (define gen-image-checked
    (foreign-procedure "GenImageChecked" (int int int int (& Color) (& Color)) (& Image)))

  (define gen-image-white-noise
    (foreign-procedure "GenImageWhiteNoise" (int int float) (& Image)))

  (define gen-image-perlin-noise
    (foreign-procedure "GenImagePerlinNoise" (int int int int float) (& Image)))

  (define gen-image-cellular
    (foreign-procedure "GenImageCellular" (int int int) (& Image)))

  (define gen-image-text
    (foreign-procedure "GenImageText" (int int string) (& Image)))

  (define image-copy
    (foreign-procedure "ImageCopy" ((& Image)) (& Image)))

  (define image-from-image
    (foreign-procedure "ImageFromImage" ((& Image) (& Rectangle)) (& Image)))

  (define image-text
    (foreign-procedure "ImageText" (string int (& Color)) (& Image)))

  (define image-text-ex
    (foreign-procedure "ImageTextEx" ((& Font) string float float (& Color)) (& Image)))

  (define image-format
    (foreign-procedure "ImageFormat" ((* Image) int) void))

  (define image-to-pot
    (foreign-procedure "ImageToPOT" ((* Image) (& Color)) void))

  (define image-crop
    (foreign-procedure "ImageCrop" ((* Image) (& Rectangle)) void))

  (define image-alpha-crop
    (foreign-procedure "ImageAlphaCrop" ((* Image) float) void))

  (define image-alpha-clear
    (foreign-procedure "ImageAlphaClear" ((* Image) (& Color) float) void))

  (define image-alpha-mask
    (foreign-procedure "ImageAlphaMask" ((* Image) (& Image)) void))

  (define image-alpha-premultiply
    (foreign-procedure "ImageAlphaPremultiply" ((* Image)) void))

  (define image-blur-gaussian
    (foreign-procedure "ImageBlurGaussian" ((* Image) int) void))

  (define image-resize
    (foreign-procedure "ImageResize" ((* Image) int int) void))

  (define image-resize-nn
    (foreign-procedure "ImageResizeNN" ((* Image) int int) void))

  (define image-resize-canvas
    (foreign-procedure "ImageResizeCanvas" ((* Image) int int int int (& Color)) void))

  (define image-mipmaps
    (foreign-procedure "ImageMipmaps" ((* Image)) void))

  (define image-dither
    (foreign-procedure "ImageDither" ((* Image) int int int int) void))

  (define image-flip-vertical
    (foreign-procedure "ImageFlipVertical" ((* Image)) void))

  (define image-flip-horizontal
    (foreign-procedure "ImageFlipHorizontal" ((* Image)) void))

  (define image-rotate
    (foreign-procedure "ImageRotate" ((* Image) int) void))

  (define image-rotate-cw
    (foreign-procedure "ImageRotateCW" ((* Image)) void))

  (define image-rotate-ccw
    (foreign-procedure "ImageRotateCCW" ((* Image)) void))

  (define image-color-tint
    (foreign-procedure "ImageColorTint" ((* Image) (& Color)) void))

  (define image-color-invert
    (foreign-procedure "ImageColorInvert" ((* Image)) void))

  (define image-color-grayscale
    (foreign-procedure "ImageColorGrayscale" ((* Image)) void))

  (define image-color-contrast
    (foreign-procedure "ImageColorContrast" ((* Image) float) void))

  (define image-color-brightness
    (foreign-procedure "ImageColorBrightness" ((* Image) int) void))

  (define image-color-replace
    (foreign-procedure "ImageColorReplace" ((* Image) (& Color) (& Color)) void))

  (define load-image-colors
    (foreign-procedure "LoadImageColors" ((& Image)) (* Color)))

  (define load-image-palette
    (foreign-procedure "LoadImagePalette" ((& Image) int (* int)) (* Color)))

  (define unload-image-colors
    (foreign-procedure "UnloadImageColors" ((* Color)) void))

  (define unload-image-palette
    (foreign-procedure "UnloadImagePalette" ((* Color)) void))

  (define get-image-alpha-border
    (foreign-procedure "GetImageAlphaBorder" ((& Image) float) (& Rectangle)))

  (define get-image-color
    (foreign-procedure "GetImageColor" ((& Image) int int) (& Color)))

  ;; Image drawing functions
  (define image-clear-background
    (foreign-procedure "ImageClearBackground" (void* (& Color)) void))

  (define image-draw-pixel
    (foreign-procedure "ImageDrawPixel" (void* int int (& Color)) void))

  (define image-draw-pixel-v
    (foreign-procedure "ImageDrawPixelV" (void* (& Vector2) (& Color)) void))

  (define image-draw-line
    (foreign-procedure "ImageDrawLine" (void* int int int int (& Color)) void))

  (define image-draw-line-v
    (foreign-procedure "ImageDrawLineV" (void* (& Vector2) (& Vector2) (& Color)) void))

  (define image-draw-circle
    (foreign-procedure "ImageDrawCircle" (void* int int int (& Color)) void))

  (define image-draw-circle-v
    (foreign-procedure "ImageDrawCircleV" (void* (& Vector2) int (& Color)) void))

  (define image-draw-circle-lines
    (foreign-procedure "ImageDrawCircleLines" (void* int int int (& Color)) void))

  (define image-draw-circle-lines-v
    (foreign-procedure "ImageDrawCircleLinesV" (void* (& Vector2) int (& Color)) void))

  (define image-draw-rectangle
    (foreign-procedure "ImageDrawRectangle" (void* int int int int (& Color)) void))

  (define image-draw-rectangle-v
    (foreign-procedure "ImageDrawRectangleV" (void* (& Vector2) (& Vector2) (& Color)) void))

  (define image-draw-rectangle-rec
    (foreign-procedure "ImageDrawRectangleRec" (void* (& Rectangle) (& Color)) void))

  (define image-draw-rectangle-lines
    (foreign-procedure "ImageDrawRectangleLines" (void* (& Rectangle) int (& Color)) void))

  (define image-draw
    (foreign-procedure "ImageDraw" (void* (& Image) (& Rectangle) (& Rectangle) (& Color)) void))

  (define image-draw-text
    (foreign-procedure "ImageDrawText" (void* string int int int (& Color)) void))

  (define image-draw-text-ex
    (foreign-procedure "ImageDrawTextEx" (void* (& Font) string (& Vector2) float float (& Color)) void))

  ;; Texture loading functions
  (define load-texture
    (foreign-procedure "LoadTexture" (string) (& Texture2D)))

  (define load-texture-from-image
    (foreign-procedure "LoadTextureFromImage" ((& Image)) (& Texture2D)))

  (define load-texture-cubemap
    (foreign-procedure "LoadTextureCubemap" ((& Image) int) (& TextureCubemap)))

  (define load-render-texture
    (foreign-procedure "LoadRenderTexture" (int int) (& RenderTexture2D)))

  (define is-texture-ready
    (foreign-procedure "IsTextureReady" ((& Texture2D)) boolean))

  (define unload-texture
    (foreign-procedure "UnloadTexture" ((& Texture2D)) void))

  (define is-render-texture-ready
    (foreign-procedure "IsRenderTextureReady" ((& RenderTexture2D)) boolean))

  (define unload-render-texture
    (foreign-procedure "UnloadRenderTexture" ((& RenderTexture2D)) void))

  (define update-texture
    (foreign-procedure "UpdateTexture" ((& Texture2D) void*) void))

  (define update-texture-rec
    (foreign-procedure "UpdateTextureRec" ((& Texture2D) (& Rectangle) void*) void))

  ;; Texture configuration functions
  (define gen-texture-mipmaps
    (foreign-procedure "GenTextureMipmaps" (void*) void))

  (define set-texture-filter
    (foreign-procedure "SetTextureFilter" ((& Texture2D) int) void))

  (define set-texture-wrap
    (foreign-procedure "SetTextureWrap" ((& Texture2D) int) void))

  ;; Texture drawing functions
  (define draw-texture
    (foreign-procedure "DrawTexture" ((& Texture2D) int int (& Color)) void))

  (define draw-texture-v
    (foreign-procedure "DrawTextureV" ((& Texture2D) (& Vector2) (& Color)) void))

  (define draw-texture-ex
    (foreign-procedure "DrawTextureEx" ((& Texture2D) (& Vector2) float float (& Color)) void))

  (define draw-texture-rec
    (foreign-procedure "DrawTextureRec" ((& Texture2D) (& Rectangle) (& Vector2) (& Color)) void))

  (define draw-texture-pro
    (foreign-procedure "DrawTexturePro" ((& Texture2D) (& Rectangle) (& Rectangle) (& Vector2) float (& Color)) void))

  (define draw-texture-n-patch
    (foreign-procedure "DrawTextureNPatch" ((& Texture2D) (& NPatchInfo) (& Rectangle) (& Vector2) float (& Color)) void))

  ;; Color/pixel related functions
  (define fade
    (foreign-procedure "Fade" ((& Color) float) (& Color)))

  (define color-to-int
    (foreign-procedure "ColorToInt" ((& Color)) int))

  (define color-normalize
    (foreign-procedure "ColorNormalize" ((& Color)) (& Vector4)))

  (define color-from-normalized
    (foreign-procedure "ColorFromNormalized" ((& Vector4)) (& Color)))

  (define color-to-hsv
    (foreign-procedure "ColorToHSV" ((& Color)) (& Vector3)))

  (define color-from-hsv
    (foreign-procedure "ColorFromHSV" (float float float) (& Color)))

  (define color-tint
    (foreign-procedure "ColorTint" ((& Color) (& Color)) (& Color)))

  (define color-brightness
    (foreign-procedure "ColorBrightness" ((& Color) float) (& Color)))

  (define color-contrast
    (foreign-procedure "ColorContrast" ((& Color) float) (& Color)))

  (define color-alpha
    (foreign-procedure "ColorAlpha" ((& Color) float) (& Color)))

  (define color-alpha-blend
    (foreign-procedure "ColorAlphaBlend" ((& Color) (& Color) (& Color)) (& Color)))

  (define get-color
    (foreign-procedure "GetColor" (unsigned-int) (& Color)))

  (define get-pixel-color
    (foreign-procedure "GetPixelColor" (void* int) (& Color)))

  (define set-pixel-color
    (foreign-procedure "SetPixelColor" (void* (& Color) int) void))

  (define get-pixel-data-size
    (foreign-procedure "GetPixelDataSize" (int int int) int))

  ;; Font Loading and Text Drawing Functions
  (define get-font-default
    (foreign-procedure "GetFontDefault" () (& Font)))

  (define load-font
    (foreign-procedure "LoadFont" (string) (& Font)))

  (define load-font-ex
    (foreign-procedure "LoadFontEx" (string int void* int) (& Font)))

  (define load-font-from-image
    (foreign-procedure "LoadFontFromImage" ((& Image) (& Color) int) (& Font)))

  (define load-font-from-memory
    (foreign-procedure "LoadFontFromMemory" (string string int int void* int) (& Font)))

  (define is-font-ready
    (foreign-procedure "IsFontReady" ((& Font)) boolean))

  (define load-font-data
    (foreign-procedure "LoadFontData" (string int int void* int int) (* GlyphInfo)))

  (define gen-image-font-atlas
    (foreign-procedure "GenImageFontAtlas" ((* GlyphInfo) void* int int int int) (& Image)))

  (define unload-font-data
    (foreign-procedure "UnloadFontData" ((* GlyphInfo) int) void))

  (define unload-font
    (foreign-procedure "UnloadFont" ((& Font)) void))

  (define export-font-as-code
    (foreign-procedure "ExportFontAsCode" ((& Font) string) boolean))

  ;; Text drawing functions
  (define draw-fps
    (foreign-procedure "DrawFPS" (int int) void))

  (define draw-text
    (foreign-procedure "DrawText" (string int int int (& Color)) void))

  (define draw-text-ex
    (foreign-procedure "DrawTextEx" ((& Font) string (& Vector2) float float (& Color)) void))

  (define draw-text-pro
    (foreign-procedure "DrawTextPro" ((& Font) string (& Vector2) (& Vector2) float float float (& Color)) void))

  (define draw-text-codepoint
    (foreign-procedure "DrawTextCodepoint" ((& Font) int (& Vector2) float (& Color)) void))

  (define draw-text-codepoints
    (foreign-procedure "DrawTextCodepoints" ((& Font) void* int (& Vector2) float float (& Color)) void))

  ;; Text font info functions
  (define set-text-line-spacing
    (foreign-procedure "SetTextLineSpacing" (int) void))

  (define measure-text
    (foreign-procedure "MeasureText" (string int) int))

  (define measure-text-ex
    (foreign-procedure "MeasureTextEx" ((& Font) string float float) (& Vector2)))

  (define get-glyph-index
    (foreign-procedure "GetGlyphIndex" ((& Font) int) int))

  (define get-glyph-info
    (foreign-procedure "GetGlyphInfo" ((& Font) int) (& GlyphInfo)))

  (define get-glyph-atlas-rec
    (foreign-procedure "GetGlyphAtlasRec" ((& Font) int) (& Rectangle)))

  ;; Text codepoints management functions
  (define load-utf8
    (foreign-procedure "LoadUTF8" (void* int) string))

  (define unload-utf8
    (foreign-procedure "UnloadUTF8" (string) void))

  (define load-codepoints
    (foreign-procedure "LoadCodepoints" (string void*) (* int)))

  (define unload-codepoints
    (foreign-procedure "UnloadCodepoints" ((* int)) void))

  (define get-codepoint-count
    (foreign-procedure "GetCodepointCount" (string) int))

  (define get-codepoint
    (foreign-procedure "GetCodepoint" (string void*) int))

  (define get-codepoint-next
    (foreign-procedure "GetCodepointNext" (string void*) int))

  (define get-codepoint-previous
    (foreign-procedure "GetCodepointPrevious" (string void*) int))

  (define codepoint-to-utf8
    (foreign-procedure "CodepointToUTF8" (int void*) string))

  ;; Text strings management functions
  (define text-copy
    (foreign-procedure "TextCopy" (string string) int))

  (define text-is-equal
    (foreign-procedure "TextIsEqual" (string string) boolean))

  (define text-length
    (foreign-procedure "TextLength" (string) unsigned-int))

  ;; TODO
  ;;(defin (text-format
  ;;  (foreign-procedure "TextFormat" (string ...) string))

  (define text-subtext
    (foreign-procedure "TextSubtext" (string int int) string))

  (define text-replace
    (foreign-procedure "TextReplace" (string string string) string))

  (define text-insert
    (foreign-procedure "TextInsert" (string string int) string))

  (define text-join
    (foreign-procedure "TextJoin" (void* int string) string))

  (define text-split
    (foreign-procedure "TextSplit" (string char void*) void*))

  (define text-append
    (foreign-procedure "TextAppend" (string string void*) void))

  (define text-find-index
    (foreign-procedure "TextFindIndex" (string string) int))

  (define text-to-upper
    (foreign-procedure "TextToUpper" (string) string))

  (define text-to-lower
    (foreign-procedure "TextToLower" (string) string))

  (define text-to-pascal
    (foreign-procedure "TextToPascal" (string) string))

  (define text-to-integer
    (foreign-procedure "TextToInteger" (string) int))

  ;; Basic 3d Shapes Drawing Functions
  (define draw-line-3d
    (foreign-procedure "DrawLine3D" ((& Vector3) (& Vector3) (& Color)) void))

  (define draw-point-3d
    (foreign-procedure "DrawPoint3D" ((& Vector3) (& Color)) void))

  (define draw-circle-3d
    (foreign-procedure "DrawCircle3D" ((& Vector3) float (& Vector3) float (& Color)) void))

  (define draw-triangle-3d
    (foreign-procedure "DrawTriangle3D" ((& Vector3) (& Vector3) (& Vector3) (& Color)) void))

  (define draw-triangle-strip-3d
    (foreign-procedure "DrawTriangleStrip3D" ((* Vector3) int (& Color)) void))

  (define draw-cube
    (foreign-procedure "DrawCube" ((& Vector3) float float float (& Color)) void))

  (define draw-cube-v
    (foreign-procedure "DrawCubeV" ((& Vector3) (& Vector3) (& Color)) void))

  (define draw-cube-wires
    (foreign-procedure "DrawCubeWires" ((& Vector3) float float float (& Color)) void))

  (define draw-cube-wires-v
    (foreign-procedure "DrawCubeWiresV" ((& Vector3) (& Vector3) (& Color)) void))

  (define draw-sphere
    (foreign-procedure "DrawSphere" ((& Vector3) float (& Color)) void))

  (define draw-sphere-ex
    (foreign-procedure "DrawSphereEx" ((& Vector3) float int int (& Color)) void))

  (define draw-sphere-wires
    (foreign-procedure "DrawSphereWires" ((& Vector3) float int int (& Color)) void))

  (define draw-cylinder
    (foreign-procedure "DrawCylinder" ((& Vector3) float float float int (& Color)) void))

  (define draw-cylinder-ex
    (foreign-procedure "DrawCylinderEx" ((& Vector3) (& Vector3) float float int (& Color)) void))

  (define draw-cylinder-wires
    (foreign-procedure "DrawCylinderWires" ((& Vector3) float float float int (& Color)) void))

  (define draw-cylinder-wires-ex
    (foreign-procedure "DrawCylinderWiresEx" ((& Vector3) (& Vector3) float float int (& Color)) void))

  (define draw-capsule
    (foreign-procedure "DrawCapsule" ((& Vector3) (& Vector3) float int int (& Color)) void))

  (define draw-capsule-wires
    (foreign-procedure "DrawCapsuleWires" ((& Vector3) (& Vector3) float int int (& Color)) void))

  (define draw-plane
    (foreign-procedure "DrawPlane" ((& Vector3) (& Vector2) (& Color)) void))

  (define draw-ray
    (foreign-procedure "DrawRay" ((& Ray) (& Color)) void))

  (define draw-grid
    (foreign-procedure "DrawGrid" (int float) void))

  ;; Model 3d Loading and Drawing Functions
  (define load-model
    (foreign-procedure "LoadModel" (string) (& Model)))

  (define load-model-from-mesh
    (foreign-procedure "LoadModelFromMesh" ((& Mesh)) (& Model)))

  (define is-model-ready
    (foreign-procedure "IsModelReady" ((& Model)) boolean))

  (define unload-model
    (foreign-procedure "UnloadModel" ((& Model)) void))

  (define get-model-bounding-box
    (foreign-procedure "GetModelBoundingBox" ((& Model)) (& BoundingBox)))

  (define draw-model
    (foreign-procedure "DrawModel" ((& Model) (& Vector3) float (& Color)) void))

  (define draw-model-ex
    (foreign-procedure "DrawModelEx" ((& Model) (& Vector3) (& Vector3) float (& Vector3) (& Color)) void))

  (define draw-model-wires
    (foreign-procedure "DrawModelWires" ((& Model) (& Vector3) float (& Color)) void))

  (define draw-model-wires-ex
    (foreign-procedure "DrawModelWiresEx" ((& Model) (& Vector3) (& Vector3) float (& Vector3) (& Color)) void))

  (define draw-bounding-box
    (foreign-procedure "DrawBoundingBox" ((& BoundingBox) (& Color)) void))

  (define draw-billboard
    (foreign-procedure "DrawBillboard" ((& Camera) (& Texture2D) (& Vector3) float (& Color)) void))

  (define draw-billboard-rec
    (foreign-procedure "DrawBillboardRec" ((& Camera) (& Texture2D) (& Rectangle) (& Vector3) (& Vector2) (& Color)) void))

  (define draw-billboard-pro
    (foreign-procedure "DrawBillboardPro" ((& Camera) (& Texture2D) (& Rectangle) (& Vector3) (& Vector3) (& Vector2) (& Vector2) float (& Color)) void))

  ;; Mesh management functions
  (define upload-mesh
    (foreign-procedure "UploadMesh" (void* boolean) void))

  (define update-mesh-buffer
    (foreign-procedure "UpdateMeshBuffer" ((& Mesh) int void* int int) void))

  (define unload-mesh
    (foreign-procedure "UnloadMesh" ((& Mesh)) void))

  (define draw-mesh
    (foreign-procedure "DrawMesh" ((& Mesh) (& Material) (& Matrix)) void))

  (define draw-mesh-instanced
    (foreign-procedure "DrawMeshInstanced" ((& Mesh) (& Material) (* Matrix) int) void))

  (define export-mesh
    (foreign-procedure "ExportMesh" ((& Mesh) string) boolean))

  (define get-mesh-bounding-box
    (foreign-procedure "GetMeshBoundingBox" ((& Mesh)) (& BoundingBox)))

  (define gen-mesh-tangents
    (foreign-procedure "GenMeshTangents" (void*) void))

  ;; Mesh generation functions
  (define gen-mesh-poly
    (foreign-procedure "GenMeshPoly" (int float) (& Mesh)))

  (define gen-mesh-plane
    (foreign-procedure "GenMeshPlane" (float float int int) (& Mesh)))

  (define gen-mesh-cube
    (foreign-procedure "GenMeshCube" (float float float) (& Mesh)))

  (define gen-mesh-sphere
    (foreign-procedure "GenMeshSphere" (float int int) (& Mesh)))

  (define gen-mesh-hemi-sphere
    (foreign-procedure "GenMeshHemiSphere" (float int int) (& Mesh)))

  (define gen-mesh-cylinder
    (foreign-procedure "GenMeshCylinder" (float float int) (& Mesh)))

  (define gen-mesh-cone
    (foreign-procedure "GenMeshCone" (float float int) (& Mesh)))

  (define gen-mesh-torus
    (foreign-procedure "GenMeshTorus" (float float int int) (& Mesh)))

  (define gen-mesh-knot
    (foreign-procedure "GenMeshKnot" (float float int int) (& Mesh)))

  (define gen-mesh-heightmap
    (foreign-procedure "GenMeshHeightmap" ((& Image) (& Vector3)) (& Mesh)))

  (define gen-mesh-cubicmap
    (foreign-procedure "GenMeshCubicmap" ((& Image) (& Vector3)) (& Mesh)))

  ;; Material loading/unloading functions
  (define load-materials
    (foreign-procedure "LoadMaterials" (string void*) (* Material)))

  (define load-material-default
    (foreign-procedure "LoadMaterialDefault" () (& Material)))

  (define is-material-ready
    (foreign-procedure "IsMaterialReady" ((& Material)) boolean))

  (define unload-material
    (foreign-procedure "UnloadMaterial" ((& Material)) void))

  (define set-material-texture
    (foreign-procedure "SetMaterialTexture" (void* int (& Texture2D)) void))

  (define set-model-mesh-material
    (foreign-procedure "SetModelMeshMaterial" (void* int int) void))

  ;; Model animations loading/unloading functions
  (define load-model-animations
    (foreign-procedure "LoadModelAnimations" (string void*) (* ModelAnimation)))

  (define update-model-animation
    (foreign-procedure "UpdateModelAnimation" ((& Model) (& ModelAnimation) int) void))

  (define unload-model-animation
    (foreign-procedure "UnloadModelAnimation" ((& ModelAnimation)) void))

  (define unload-model-animations
    (foreign-procedure "UnloadModelAnimations" ((* ModelAnimation) int) void))

  (define is-model-animation-valid
    (foreign-procedure "IsModelAnimationValid" ((& Model) (& ModelAnimation)) boolean))

  ;; Collision detection functions
  (define check-collision-spheres
    (foreign-procedure "CheckCollisionSpheres" ((& Vector3) float (& Vector3) float) boolean))

  (define check-collision-boxes
    (foreign-procedure "CheckCollisionBoxes" ((& BoundingBox) (& BoundingBox)) boolean))

  (define check-collision-box-sphere
    (foreign-procedure "CheckCollisionBoxSphere" ((& BoundingBox) (& Vector3) float) boolean))

  (define get-ray-collision-sphere
    (foreign-procedure "GetRayCollisionSphere" ((& Ray) (& Vector3) float) (& RayCollision)))

  (define get-ray-collision-box
    (foreign-procedure "GetRayCollisionBox" ((& Ray) (& BoundingBox)) (& RayCollision)))

  (define get-ray-collision-mesh
    (foreign-procedure "GetRayCollisionMesh" ((& Ray) (& Mesh) (& Matrix)) (& RayCollision)))

  (define get-ray-collision-triangle
    (foreign-procedure "GetRayCollisionTriangle" ((& Ray) (& Vector3) (& Vector3) (& Vector3)) (& RayCollision)))

  (define get-ray-collision-quad
    (foreign-procedure "GetRayCollisionQuad" ((& Ray) (& Vector3) (& Vector3) (& Vector3) (& Vector3)) (& RayCollision)))

  ;; Audio device management functions
  (define init-audio-device
    (foreign-procedure "InitAudioDevice" () void))

  (define close-audio-device
    (foreign-procedure "CloseAudioDevice" () void))

  (define is-audio-device-ready
    (foreign-procedure "IsAudioDeviceReady" () boolean))

  (define set-master-volume
    (foreign-procedure "SetMasterVolume" (float) void))

  (define get-master-volume
    (foreign-procedure "GetMasterVolume" () float))

  ;; Wave/Sound loading/unloading functions
  (define load-wave
    (foreign-procedure "LoadWave" (string) (& Wave)))

  (define load-wave-from-memory
    (foreign-procedure "LoadWaveFromMemory" (string string int) (& Wave)))

  (define is-wave-ready
    (foreign-procedure "IsWaveReady" ((& Wave)) boolean))

  (define load-sound
    (foreign-procedure "LoadSound" (string) (& Sound)))

  (define load-sound-from-wave
    (foreign-procedure "LoadSoundFromWave" ((& Wave)) (& Sound)))

  (define load-sound-alias
    (foreign-procedure "LoadSoundAlias" ((& Sound)) (& Sound)))

  (define is-sound-ready
    (foreign-procedure "IsSoundReady" ((& Sound)) boolean))

  (define update-sound
    (foreign-procedure "UpdateSound" ((& Sound) void* int) void))

  (define unload-wave
    (foreign-procedure "UnloadWave" ((& Wave)) void))

  (define unload-sound
    (foreign-procedure "UnloadSound" ((& Sound)) void))

  (define unload-sound-alias
    (foreign-procedure "UnloadSoundAlias" ((& Sound)) void))

  (define export-wave
    (foreign-procedure "ExportWave" ((& Wave) string) boolean))

  (define export-wave-as-code
    (foreign-procedure "ExportWaveAsCode" ((& Wave) string) boolean))

  ;; Wave/Sound management functions
  (define play-sound
    (foreign-procedure "PlaySound" ((& Sound)) void))

  (define stop-sound
    (foreign-procedure "StopSound" ((& Sound)) void))

  (define pause-sound
    (foreign-procedure "PauseSound" ((& Sound)) void))

  (define resume-sound
    (foreign-procedure "ResumeSound" ((& Sound)) void))

  (define is-sound-playing
    (foreign-procedure "IsSoundPlaying" ((& Sound)) boolean))

  (define set-sound-volume
    (foreign-procedure "SetSoundVolume" ((& Sound) float) void))

  (define set-sound-pitch
    (foreign-procedure "SetSoundPitch" ((& Sound) float) void))

  (define set-sound-pan
    (foreign-procedure "SetSoundPan" ((& Sound) float) void))

  (define wave-copy
    (foreign-procedure "WaveCopy" ((& Wave)) (& Wave)))

  (define wave-crop
    (foreign-procedure "WaveCrop" (void* int int) void))

  (define wave-format
    (foreign-procedure "WaveFormat" (void* int int int) void))

  (define load-wave-samples
    (foreign-procedure "LoadWaveSamples" ((& Wave)) (* float)))

  (define unload-wave-samples
    (foreign-procedure "UnloadWaveSamples" ((* float)) void))

  ;; Music management functions
  (define load-music-stream
    (foreign-procedure "LoadMusicStream" (string) (& Music)))

  (define load-music-stream-from-memory
    (foreign-procedure "LoadMusicStreamFromMemory" (string string int) (& Music)))

  (define is-music-ready
    (foreign-procedure "IsMusicReady" ((& Music)) boolean))

  (define unload-music-stream
    (foreign-procedure "UnloadMusicStream" ((& Music)) void))

  (define play-music-stream
    (foreign-procedure "PlayMusicStream" ((& Music)) void))

  (define is-music-stream-playing
    (foreign-procedure "IsMusicStreamPlaying" ((& Music)) boolean))

  (define update-music-stream
    (foreign-procedure "UpdateMusicStream" ((& Music)) void))

  (define stop-music-stream
    (foreign-procedure "StopMusicStream" ((& Music)) void))

  (define pause-music-stream
    (foreign-procedure "PauseMusicStream" ((& Music)) void))

  (define resume-music-stream
    (foreign-procedure "ResumeMusicStream" ((& Music)) void))

  (define seek-music-stream
    (foreign-procedure "SeekMusicStream" ((& Music) float) void))

  (define set-music-volume
    (foreign-procedure "SetMusicVolume" ((& Music) float) void))

  (define set-music-pitch
    (foreign-procedure "SetMusicPitch" ((& Music) float) void))

  (define set-music-pan
    (foreign-procedure "SetMusicPan" ((& Music) float) void))

  (define get-music-time-length
    (foreign-procedure "GetMusicTimeLength" ((& Music)) float))

  (define get-music-time-played
    (foreign-procedure "GetMusicTimePlayed" ((& Music)) float))

  ;; AudioStream management functions
  (define load-audio-stream
    (foreign-procedure "LoadAudioStream" (unsigned-int unsigned-int unsigned-int) (& AudioStream)))

  (define is-audio-stream-ready
    (foreign-procedure "IsAudioStreamReady" ((& AudioStream)) boolean))

  (define unload-audio-stream
    (foreign-procedure "UnloadAudioStream" ((& AudioStream)) void))

  (define update-audio-stream
    (foreign-procedure "UpdateAudioStream" ((& AudioStream) void* int) void))

  (define is-audio-stream-processed
    (foreign-procedure "IsAudioStreamProcessed" ((& AudioStream)) boolean))

  (define play-audio-stream
    (foreign-procedure "PlayAudioStream" ((& AudioStream)) void))

  (define pause-audio-stream
    (foreign-procedure "PauseAudioStream" ((& AudioStream)) void))

  (define resume-audio-stream
    (foreign-procedure "ResumeAudioStream" ((& AudioStream)) void))

  (define is-audio-stream-playing
    (foreign-procedure "IsAudioStreamPlaying" ((& AudioStream)) boolean))

  (define stop-audio-stream
    (foreign-procedure "StopAudioStream" ((& AudioStream)) void))

  (define set-audio-stream-volume
    (foreign-procedure "SetAudioStreamVolume" ((& AudioStream) float) void))

  (define set-audio-stream-pitch
    (foreign-procedure "SetAudioStreamPitch" ((& AudioStream) float) void))

  (define set-audio-stream-pan
    (foreign-procedure "SetAudioStreamPan" ((& AudioStream) float) void))

  (define set-audio-stream-buffer-size-default
    (foreign-procedure "SetAudioStreamBufferSizeDefault" (int) void))

  (define set-audio-stream-callback
    (foreign-procedure "SetAudioStreamCallback" ((& AudioStream) void*) void))

  (define attach-audio-stream-processor
    (foreign-procedure "AttachAudioStreamProcessor" ((& AudioStream) void*) void))

  (define detach-audio-stream-processor
    (foreign-procedure "DetachAudioStreamProcessor" ((& AudioStream) void*) void))

  (define attach-audio-mixed-processor
    (foreign-procedure "AttachAudioMixedProcessor" (void*) void))

  (define detach-audio-mixed-processor
    (foreign-procedure "DetachAudioMixedProcessor" (void*) void))



;;;;;;;;;;;; ENUMS ;;;;;;;;;;;;;;;;;;;;;;;
  ;; ConfigFlags
  (define FLAG_VSYNC_HINT #x00000040)
  (define FLAG_FULLSCREEN_MODE #x00000002)
  (define FLAG_WINDOW_RESIZABLE #x00000004)
  (define FLAG_WINDOW_UNDECORATED #x00000008)
  (define FLAG_WINDOW_HIDDEN #x00000080)
  (define FLAG_WINDOW_MINIMIZED #x00000200)
  (define FLAG_WINDOW_MAXIMIZED #x00000400)
  (define FLAG_WINDOW_UNFOCUSED #x00000800)
  (define FLAG_WINDOW_TOPMOST #x00001000)
  (define FLAG_WINDOW_ALWAYS_RUN #x00000100)
  (define FLAG_WINDOW_TRANSPARENT #x00000010)
  (define FLAG_WINDOW_HIGHDPI #x00002000)
  (define FLAG_WINDOW_MOUSE_PASSTHROUGH #x00004000)
  (define FLAG_BORDERLESS_WINDOWED_MODE #x00008000)
  (define FLAG_MSAA_4X_HINT #x00000020)
  (define FLAG_INTERLACED_HINT #x00010000)

  ;; TraceLogLevel
  (define LOG_ALL 0)
  (define LOG_TRACE 1)
  (define LOG_DEBUG 2)
  (define LOG_INFO 3)
  (define LOG_WARNING 4)
  (define LOG_ERROR 5)
  (define LOG_FATAL 6)
  (define LOG_NONE 7)

  ;; KeyboardKey
  (define KEY_NULL 0)
  (define KEY_APOSTROPHE 39)
  (define KEY_COMMA 44)
  (define KEY_MINUS 45)
  (define KEY_PERIOD 46)
  (define KEY_SLASH 47)
  (define KEY_ZERO 48)
  (define KEY_ONE 49)
  (define KEY_TWO 50)
  (define KEY_THREE 51)
  (define KEY_FOUR 52)
  (define KEY_FIVE 53)
  (define KEY_SIX 54)
  (define KEY_SEVEN 55)
  (define KEY_EIGHT 56)
  (define KEY_NINE 57)
  (define KEY_SEMICOLON 59)
  (define KEY_EQUAL 61)
  (define KEY_A 65)
  (define KEY_B 66)
  (define KEY_C 67)
  (define KEY_D 68)
  (define KEY_E 69)
  (define KEY_F 70)
  (define KEY_G 71)
  (define KEY_H 72)
  (define KEY_I 73)
  (define KEY_J 74)
  (define KEY_K 75)
  (define KEY_L 76)
  (define KEY_M 77)
  (define KEY_N 78)
  (define KEY_O 79)
  (define KEY_P 80)
  (define KEY_Q 81)
  (define KEY_R 82)
  (define KEY_S 83)
  (define KEY_T 84)
  (define KEY_U 85)
  (define KEY_V 86)
  (define KEY_W 87)
  (define KEY_X 88)
  (define KEY_Y 89)
  (define KEY_Z 90)
  (define KEY_LEFT_BRACKET 91)
  (define KEY_BACKSLASH 92)
  (define KEY_RIGHT_BRACKET 93)
  (define KEY_GRAVE 96)
  (define KEY_SPACE 32)
  (define KEY_ESCAPE 256)
  (define KEY_ENTER 257)
  (define KEY_TAB 258)
  (define KEY_BACKSPACE 259)
  (define KEY_INSERT 260)
  (define KEY_DELETE 261)
  (define KEY_RIGHT 262)
  (define KEY_LEFT 263)
  (define KEY_DOWN 264)
  (define KEY_UP 265)
  (define KEY_PAGE_UP 266)
  (define KEY_PAGE_DOWN 267)
  (define KEY_HOME 268)
  (define KEY_END 269)
  (define KEY_CAPS_LOCK 280)
  (define KEY_SCROLL_LOCK 281)
  (define KEY_NUM_LOCK 282)
  (define KEY_PRINT_SCREEN 283)
  (define KEY_PAUSE 284)
  (define KEY_F1 290)
  (define KEY_F2 291)
  (define KEY_F3 292)
  (define KEY_F4 293)
  (define KEY_F5 294)
  (define KEY_F6 295)
  (define KEY_F7 296)
  (define KEY_F8 297)
  (define KEY_F9 298)
  (define KEY_F10 299)
  (define KEY_F11 300)
  (define KEY_F12 301)
  (define KEY_LEFT_SHIFT 340)
  (define KEY_LEFT_CONTROL 341)
  (define KEY_LEFT_ALT 342)
  (define KEY_LEFT_SUPER 343)
  (define KEY_RIGHT_SHIFT 344)
  (define KEY_RIGHT_CONTROL 345)
  (define KEY_RIGHT_ALT 346)
  (define KEY_RIGHT_SUPER 347)
  (define KEY_KB_MENU 348)
  (define KEY_KP_0 320)
  (define KEY_KP_1 321)
  (define KEY_KP_2 322)
  (define KEY_KP_3 323)
  (define KEY_KP_4 324)
  (define KEY_KP_5 325)
  (define KEY_KP_6 326)
  (define KEY_KP_7 327)
  (define KEY_KP_8 328)
  (define KEY_KP_9 329)
  (define KEY_KP_DECIMAL 330)
  (define KEY_KP_DIVIDE 331)
  (define KEY_KP_MULTIPLY 332)
  (define KEY_KP_SUBTRACT 333)
  (define KEY_KP_ADD 334)
  (define KEY_KP_ENTER 335)
  (define KEY_KP_EQUAL 336)
  (define KEY_BACK 4)
  (define KEY_MENU 82)
  (define KEY_VOLUME_UP 24)
  (define KEY_VOLUME_DOWN 25)

  ;; MouseButton
  (define MOUSE_BUTTON_LEFT 0)
  (define MOUSE_BUTTON_RIGHT 1)
  (define MOUSE_BUTTON_MIDDLE 2)
  (define MOUSE_BUTTON_SIDE 3)
  (define MOUSE_BUTTON_EXTRA 4)
  (define MOUSE_BUTTON_FORWARD 5)
  (define MOUSE_BUTTON_BACK 6)

  ;; MouseCursor
  (define MOUSE_CURSOR_DEFAULT 0)
  (define MOUSE_CURSOR_ARROW 1)
  (define MOUSE_CURSOR_IBEAM 2)
  (define MOUSE_CURSOR_CROSSHAIR 3)
  (define MOUSE_CURSOR_POINTING_HAND 4)
  (define MOUSE_CURSOR_RESIZE_EW 5)
  (define MOUSE_CURSOR_RESIZE_NS 6)
  (define MOUSE_CURSOR_RESIZE_NWSE 7)
  (define MOUSE_CURSOR_RESIZE_NESW 8)
  (define MOUSE_CURSOR_RESIZE_ALL 9)
  (define MOUSE_CURSOR_NOT_ALLOWED 10)

  ;; GamepadButton
  (define GAMEPAD_BUTTON_UNKNOWN 0)
  (define GAMEPAD_BUTTON_LEFT_FACE_UP 1)
  (define GAMEPAD_BUTTON_LEFT_FACE_RIGHT 2)
  (define GAMEPAD_BUTTON_LEFT_FACE_DOWN 3)
  (define GAMEPAD_BUTTON_LEFT_FACE_LEFT 4)
  (define GAMEPAD_BUTTON_RIGHT_FACE_UP 5)
  (define GAMEPAD_BUTTON_RIGHT_FACE_RIGHT 6)
  (define GAMEPAD_BUTTON_RIGHT_FACE_DOWN 7)
  (define GAMEPAD_BUTTON_RIGHT_FACE_LEFT 8)
  (define GAMEPAD_BUTTON_LEFT_TRIGGER_1 9)
  (define GAMEPAD_BUTTON_LEFT_TRIGGER_2 10)
  (define GAMEPAD_BUTTON_RIGHT_TRIGGER_1 11)
  (define GAMEPAD_BUTTON_RIGHT_TRIGGER_2 12)
  (define GAMEPAD_BUTTON_MIDDLE_LEFT 13)
  (define GAMEPAD_BUTTON_MIDDLE 14)
  (define GAMEPAD_BUTTON_MIDDLE_RIGHT 15)
  (define GAMEPAD_BUTTON_LEFT_THUMB 16)
  (define GAMEPAD_BUTTON_RIGHT_THUMB 17)

  ;; GamepadAxis
  (define GAMEPAD_AXIS_LEFT_X 0)
  (define GAMEPAD_AXIS_LEFT_Y 1)
  (define GAMEPAD_AXIS_RIGHT_X 2)
  (define GAMEPAD_AXIS_RIGHT_Y 3)
  (define GAMEPAD_AXIS_LEFT_TRIGGER 4)
  (define GAMEPAD_AXIS_RIGHT_TRIGGER 5)

  ;; MaterialMapIndex
  (define MATERIAL_MAP_ALBEDO 0)
  (define MATERIAL_MAP_METALNESS 1)
  (define MATERIAL_MAP_NORMAL 2)
  (define MATERIAL_MAP_ROUGHNESS 3)
  (define MATERIAL_MAP_OCCLUSION 4)
  (define MATERIAL_MAP_EMISSION 5)
  (define MATERIAL_MAP_HEIGHT 6)
  (define MATERIAL_MAP_CUBEMAP 7)
  (define MATERIAL_MAP_IRRADIANCE 8)
  (define MATERIAL_MAP_PREFILTER 9)
  (define MATERIAL_MAP_BRDF 10)

  ;; ShaderLocationIndex
  (define SHADER_LOC_VERTEX_POSITION 0)
  (define SHADER_LOC_VERTEX_TEXCOORD01 1)
  (define SHADER_LOC_VERTEX_TEXCOORD02 2)
  (define SHADER_LOC_VERTEX_NORMAL 3)
  (define SHADER_LOC_VERTEX_TANGENT 4)
  (define SHADER_LOC_VERTEX_COLOR 5)
  (define SHADER_LOC_MATRIX_MVP 6)
  (define SHADER_LOC_MATRIX_VIEW 7)
  (define SHADER_LOC_MATRIX_PROJECTION 8)
  (define SHADER_LOC_MATRIX_MODEL 9)
  (define SHADER_LOC_MATRIX_NORMAL 10)
  (define SHADER_LOC_VECTOR_VIEW 11)
  (define SHADER_LOC_COLOR_DIFFUSE 12)
  (define SHADER_LOC_COLOR_SPECULAR 13)
  (define SHADER_LOC_COLOR_AMBIENT 14)
  (define SHADER_LOC_MAP_ALBEDO 15)
  (define SHADER_LOC_MAP_METALNESS 16)
  (define SHADER_LOC_MAP_NORMAL 17)
  (define SHADER_LOC_MAP_ROUGHNESS 18)
  (define SHADER_LOC_MAP_OCCLUSION 19)
  (define SHADER_LOC_MAP_EMISSION 20)
  (define SHADER_LOC_MAP_HEIGHT 21)
  (define SHADER_LOC_MAP_CUBEMAP 22)
  (define SHADER_LOC_MAP_IRRADIANCE 23)
  (define SHADER_LOC_MAP_PREFILTER 24)
  (define SHADER_LOC_MAP_BRDF 25)

  ;; ShaderUniformDataType
  (define SHADER_UNIFORM_FLOAT 0)
  (define SHADER_UNIFORM_VEC2 1)
  (define SHADER_UNIFORM_VEC3 2)
  (define SHADER_UNIFORM_VEC4 3)
  (define SHADER_UNIFORM_INT 4)
  (define SHADER_UNIFORM_IVEC2 5)
  (define SHADER_UNIFORM_IVEC3 6)
  (define SHADER_UNIFORM_IVEC4 7)
  (define SHADER_UNIFORM_SAMPLER2D 8)

  ;; ShaderAttributeDataType
  (define SHADER_ATTRIB_FLOAT 0)
  (define SHADER_ATTRIB_VEC2 1)
  (define SHADER_ATTRIB_VEC3 2)
  (define SHADER_ATTRIB_VEC4 3)

  ;; PixelFormat
  (define PIXELFORMAT_UNCOMPRESSED_GRAYSCALE 1)
  (define PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA 2)
  (define PIXELFORMAT_UNCOMPRESSED_R5G6B5 3)
  (define PIXELFORMAT_UNCOMPRESSED_R8G8B8 4)
  (define PIXELFORMAT_UNCOMPRESSED_R5G5B5A1 5)
  (define PIXELFORMAT_UNCOMPRESSED_R4G4B4A4 6)
  (define PIXELFORMAT_UNCOMPRESSED_R8G8B8A8 7)
  (define PIXELFORMAT_UNCOMPRESSED_R32 8)
  (define PIXELFORMAT_UNCOMPRESSED_R32G32B32 9)
  (define PIXELFORMAT_UNCOMPRESSED_R32G32B32A32 10)
  (define PIXELFORMAT_UNCOMPRESSED_R16 11)
  (define PIXELFORMAT_UNCOMPRESSED_R16G16B16 12)
  (define PIXELFORMAT_UNCOMPRESSED_R16G16B16A16 13)
  (define PIXELFORMAT_COMPRESSED_DXT1_RGB 14)
  (define PIXELFORMAT_COMPRESSED_DXT1_RGBA 15)
  (define PIXELFORMAT_COMPRESSED_DXT3_RGBA 16)
  (define PIXELFORMAT_COMPRESSED_DXT5_RGBA 17)
  (define PIXELFORMAT_COMPRESSED_ETC1_RGB 18)
  (define PIXELFORMAT_COMPRESSED_ETC2_RGB 19)
  (define PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA 20)
  (define PIXELFORMAT_COMPRESSED_PVRT_RGB 21)
  (define PIXELFORMAT_COMPRESSED_PVRT_RGBA 22)
  (define PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA 23)
  (define PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA 24)

  ;; TextureFilter
  (define TEXTURE_FILTER_POINT 0)
  (define TEXTURE_FILTER_BILINEAR 1)
  (define TEXTURE_FILTER_TRILINEAR 2)
  (define TEXTURE_FILTER_ANISOTROPIC_4X 3)
  (define TEXTURE_FILTER_ANISOTROPIC_8X 4)
  (define TEXTURE_FILTER_ANISOTROPIC_16X 5)

  ;; TextureWrap
  (define TEXTURE_WRAP_REPEAT 0)
  (define TEXTURE_WRAP_CLAMP 1)
  (define TEXTURE_WRAP_MIRROR_REPEAT 2)
  (define TEXTURE_WRAP_MIRROR_CLAMP 3)

  ;; CubemapLayout
  (define CUBEMAP_LAYOUT_AUTO_DETECT 0)
  (define CUBEMAP_LAYOUT_LINE_VERTICAL 1)
  (define CUBEMAP_LAYOUT_LINE_HORIZONTAL 2)
  (define CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR 3)
  (define CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE 4)
  (define CUBEMAP_LAYOUT_PANORAMA 5)

  ;; FontType
  (define FONT_DEFAULT 0)
  (define FONT_BITMAP 1)
  (define FONT_SDF 2)

  ;; BlendMode
  (define BLEND_ALPHA 0)
  (define BLEND_ADDITIVE 1)
  (define BLEND_MULTIPLIED 2)
  (define BLEND_ADD_COLORS 3)
  (define BLEND_SUBTRACT_COLORS 4)
  (define BLEND_ALPHA_PREMULTIPLY 5)
  (define BLEND_CUSTOM 6)
  (define BLEND_CUSTOM_SEPARATE 7)

  ;; Gesture
  (define GESTURE_NONE 0)
  (define GESTURE_TAP 1)
  (define GESTURE_DOUBLETAP 2)
  (define GESTURE_HOLD 4)
  (define GESTURE_DRAG 8)
  (define GESTURE_SWIPE_RIGHT 16)
  (define GESTURE_SWIPE_LEFT 32)
  (define GESTURE_SWIPE_UP 64)
  (define GESTURE_SWIPE_DOWN 128)
  (define GESTURE_PINCH_IN 256)
  (define GESTURE_PINCH_OUT 512)

  ;; CameraMode
  (define CAMERA_CUSTOM 0)
  (define CAMERA_FREE 1)
  (define CAMERA_ORBITAL 2)
  (define CAMERA_FIRST_PERSON 3)
  (define CAMERA_THIRD_PERSON 4)

  ;; CameraProjection
  (define CAMERA_PERSPECTIVE 0)
  (define CAMERA_ORTHOGRAPHIC 1)

  ;; NPatchLayout
  (define NPATCH_NINE_PATCH 0)
  (define NPATCH_THREE_PATCH_VERTICAL 1)
  (define NPATCH_THREE_PATCH_HORIZONTAL 2)


  ;; Colors 
  (define LIGHTGRAY  (make-color 200 200 200 255))   ; Light Gray
  (define GRAY       (make-color 130 130 130 255))   ; Gray
  (define DARKGRAY   (make-color 80 80 80 255))      ; Dark Gray
  (define YELLOW     (make-color 253 249 0 255))     ; Yellow
  (define GOLD       (make-color 255 203 0 255))     ; Gold
  (define ORANGE     (make-color 255 161 0 255))     ; Orange
  (define PINK       (make-color 255 109 194 255))   ; Pink
  (define RED        (make-color 230 41 55 255))     ; Red
  (define MAROON     (make-color 190 33 55 255))     ; Maroon
  (define GREEN      (make-color 0 228 48 255))      ; Green
  (define LIME       (make-color 0 158 47 255))      ; Lime
  (define DARKGREEN  (make-color 0 117 44 255))      ; Dark Green
  (define SKYBLUE    (make-color 102 191 255 255))   ; Sky Blue
  (define BLUE       (make-color 0 121 241 255))     ; Blue
  (define DARKBLUE   (make-color 0 82 172 255))      ; Dark Blue
  (define PURPLE     (make-color 200 122 255 255))   ; Purple
  (define VIOLET     (make-color 135 60 190 255))    ; Violet
  (define DARKPURPLE (make-color 112 31 126 255))    ; Dark Purple
  (define BEIGE      (make-color 211 176 131 255))   ; Beige
  (define BROWN      (make-color 127 106 79 255))    ; Brown
  (define DARKBROWN  (make-color 76 63 47 255))      ; Dark Brown

  (define WHITE      (make-color 255 255 255 255))   ; White
  (define BLACK      (make-color 0 0 0 255))         ; Black
  (define BLANK      (make-color 0 0 0 0))           ; Blank (Transparent)
  (define MAGENTA    (make-color 255 0 255 255))     ; Magenta
  (define RAYWHITE   (make-color 245 245 245 255))   ; My own White (raylib logo)

  
  (define (rand-between a b)
    (if (> a b)
        (rand-between b a)  ; Swap a and b if a > b
        (+ a (random (+ 1 (- b a))))))

  (define (frand-between a b)
    (inexact (rand-between a b)))

  )


