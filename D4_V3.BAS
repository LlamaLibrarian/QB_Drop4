SCREEN 12
Newgame: CLS
Nextplayer: LOCATE 28, 26
IF disccolor% = 2 THEN disccolor% = 4 ELSE disccolor% = 2
COLOR disccolor%
PRINT "205     270     335     400     465     530     595"
Getinput: LOCATE 1, 1
INPUT col%                 ' This is experimental code
IF col% >= 10000 THEN GOTO Newgame
IF col% < 0 THEN END
IF (col% - 10) MOD 65 OR col% < 205 OR col% > 595 THEN GOTO Getinput
IF POINT(col%, 32) THEN GOTO Getinput
FOR row% = 357 TO 32 STEP -65
 IF POINT(col%, row%) THEN GOTO Nextrow
 CIRCLE (col%, row% + 28), 28
 GOTO Nextplayer
Nextrow: NEXT
