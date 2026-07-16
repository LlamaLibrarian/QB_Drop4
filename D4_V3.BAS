SCREEN 12
Newgame: CLS
Showmove: LOCATE 28, 26
IF disccolor% = 2 THEN disccolor% = 4 ELSE disccolor% = 2
COLOR disccolor%
PRINT "205     270     335     400     465     530     595"
Getinput: LOCATE 1, 1
INPUT column%         ' This is experimental code
IF column% < 205 OR column% > 595 OR (column% - 140) MOD 65 THEN GOTO skip
IF POINT(column%, 32) THEN GOTO Getinput
 FOR row% = 357 TO 32 STEP -65
  IF POINT(column%, row%) = 0 THEN
   CIRCLE (column%, row% + 28), 28
   GOTO Showmove
  END IF
 NEXT
skip: IF column% >= 10000 THEN GOTO Newgame
IF column% >= 0 THEN GOTO Getinput
