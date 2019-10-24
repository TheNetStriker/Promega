G29 S2 ; clear height map - must home first!
G29 S2 ; clear height map - 2nd time just to be sure
M401 ; deploy Z probe (omit if using bltouch)
; M291 P"Deploy the Z Probe. Press OK when done." S2
G30 P0 X380 Y0 Z-99999 ; probe near right leadscrew
G30 P1 X200 Y150 Z-99999 ; probe center of bed
G30 P2 X30 Y0 Z-99999 ; probe near left leadscrew
G30 P3 X100 Y305 Z-99999 ; probe left rear
G30 P4 X200 Y305 Z-99999 ; probe center rear (leadscrew)
G30 P5 X300 Y305 Z-99999 ; probe right rear and calibrate 3 motors
M402 ; retract probe (omit if using bltouch)
; M291 P"Retract the Z Probe. Press OK to continue." S2