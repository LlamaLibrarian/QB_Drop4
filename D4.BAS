DIM row(1 TO 7) AS INTEGER, column(1 TO 7) AS INTEGER
row(1) = 205
row(2) = 270
row(3) = 335
row(4) = 400
row(5) = 465
row(6) = 530
row(7) = 595
SCREEN 12
NewGame: moves$ = "Moves= "
column(1) = 385
column(2) = 385
column(3) = 385
column(4) = 385
column(5) = 385
column(6) = 385
column(7) = 385
CLS
ShowStatus: LOCATE 28, 27
IF disccolor% = 2 THEN disccolor% = 4 ELSE disccolor% = 2
COLOR disccolor%
PRINT "1       2       3       4       5       6       7", moves$;
GetInput: LOCATE 1, 1
INPUT j%
IF j% >= 1000 THEN GOTO NewGame
IF j% < 0 THEN END
IF j% < 1 OR j% > 7 THEN GOTO GetInput
IF column(j%) < 0 THEN GOTO GetInput
moves$ = moves$ + CHR$(j% + 48)
CIRCLE (row(j%), column(j%)), 28
column(j%) = column(j%) - 65
GOTO ShowStatus
