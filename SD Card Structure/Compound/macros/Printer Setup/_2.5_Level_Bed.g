G28 ; home all
G28 Z ; home Z (again)
G29 S2 ; clear height map - must home first!
G29 S2 ; clear height map - 2nd time just to be sure
G1 X200 Y200 F1500 ; Move head to center
M401 ; deploy Z probe (omit if using bltouch)
;M291 P"Deploy the Z Probe. Press OK when done." S2
G30 P0 X330 Y110 Z-99999 ; probe near right leadscrew
G30 P1 X145 Y240 Z-99999 ; probe center of bed
G30 P2 X11 Y110 Z-99999 ; probe near left leadscrew
G30 P3 X0 Y410 Z-99999 ; probe left rear
G30 P4 X145 Y410 Z-99999 ; probe center rear (leadscrew)
G30 P5 X250 Y410 Z-99999 S3 ; probe right rear and calibrate 3 motors
M402 ; retract probe (omit if using bltouch)
; M291 P"Retract the Z Probe. Press OK to continue." S2