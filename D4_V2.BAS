SCREEN 12
Newgame: CLS
Flipcolor: LOCATE 28, 25
IF disccolor% = 2 THEN disccolor% = 4 ELSE disccolor% = 2
COLOR disccolor%
PRINT "195     260     325     390     455     520     585"
Getinput: LOCATE 1, 1
INPUT col%                 ' This is experimental code
IF col% >= 10000 THEN GOTO Newgame
IF col% < 0 THEN END
IF col% MOD 65 OR col% < 195 OR col% > 585 THEN GOTO Getinput
IF POINT(col%, 32) THEN GOTO Getinput
FOR row% = 357 TO 32 STEP -65
 IF POINT(col%, row%) THEN GOTO Nextrow
 CIRCLE (col%, row% + 28), 28
 GOTO Flipcolor
Nextrow: NEXT
