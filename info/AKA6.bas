0 ONERR  GOTO 4
1 REM 
4 PR# 0:
  IN# 0
5 HIMEM: 49151
7 CLEAR :
  GOSUB 60000
8 ZZ =  RND ( -  ABS (LN))
9 LEVEL = 0
10 TEXT :
   HOME :
   NORMAL :
   VTAB (12):
   PRINT " WELCOME TO AKALABETH, WORLD OF DOOM!"
20 DIM DN%(10,10),TE%(20,20),XX%(10),YY%(10),PER%(10,3),LD%(10,5),CD%(10,3),FT%(10,5),LAD%(10,3)
30 FOR X = 0 TO 20:
   TE%(X,0) = 1:
   TE%(0,X) = 1:
   TE%(X,20) = 1:
   TE%(20,X) = 1:
   NEXT 
35 :
   VTAB (23):
   PRINT "  (PLEASE WAIT)";
40 FOR X = 1 TO 19:
   FOR Y = 1 TO 19:
   TE%(X,Y) =  INT ( RND (1) ^ 5 * 4.5)
41 IF TE%(X,Y) = 3 AND  RND (1) > .5 THEN TE%(X,Y) = 0
42 NEXT :
   PRINT ".";:
   NEXT 
50 TE%( INT ( RND (1) * 19 + 1), INT ( RND (1) * 19 + 1)) = 5:
   TX =  INT ( RND (1) * 19 + 1):
   TY =  INT ( RND (1) * 19 + 1):
   TE%(TX,TY) = 3
51 XX%(0) = 139:
   YY%(0) = 79
52 FOR X = 2 TO 20 STEP 2:
   XX%(X / 2) =  INT ( ATN (1 / X) /  ATN (1) * 140 + .5):
   YY%(X / 2) =  INT (XX%(X / 2) * 4 / 7)
53 PER%(X / 2,0) = 139 - XX%(X / 2):
   PER%(X / 2,1) = 139 + XX%(X / 2):
   PER%(X / 2,2) = 79 - YY%(X / 2):
   PER%(X / 2,3) = 79 + YY%(X / 2):
   NEXT 
54 PER%(0,0) = 0:
   PER%(0,1) = 279:
   PER%(0,2) = 0:
   PE%(0,3) = 159
55 FOR X = 1 TO 10:
   CD%(X,0) = 139 - XX%(X) / 3:
   CD%(X,1) = 139 + XX%(X) / 3:
   CD%(X,2) = 79 - YY%(X) * .7:
   CD%(X,3) = 79 + YY%(X):
   NEXT :
   PRINT ".";
56 FOR X = 0 TO 9:
   LD%(X,0) = (PER%(X,0) * 2 + PER%(X + 1,0)) / 3:
   LD%(X,1) = (PER%(X,0) + 2 * PER%(X + 1,0)) / 3:
   W = LD%(X,0) - PE%(X,0)
57 LD%(X,2) = PE%(X,2) + W * 4 / 7:
   LD%(X,3) = PER%(X,2) + 2 * W * 4 / 7:
   LD%(X,4) = (PE%(X,3) * 2 + PE%(X + 1,3)) / 3:
   LD%(X,5) = (PE%(X,3) + 2 * PE%(X + 1,3)) / 3
58 LD%(X,2) = LD%(X,4) - (LD%(X,4) - LD%(X,2)) * .8:
   LD%(X,3) = LD%(X,5) - (LD%(X,5) - LD%(X,3)) * .8:
   IF LD%(X,3) = LD%(X,4) THEN LD%(X,3) = LD%(X,3) - 1
59 NEXT 
60 FOR X = 0 TO 9:
   FT%(X,0) = 139 - XX%(X) / 3:
   FT%(X,1) = 139 + XX%(X) / 3:
   FT%(X,2) = 139 - XX%(X + 1) / 3:
   FT%(X,3) = 139 + XX%(X + 1) / 3
61 FT%(X,4) = 79 + (YY%(X) * 2 + YY%(X + 1)) / 3:
   FT%(X,5) = 79 + (YY%(X) + 2 * YY%(X + 1)) / 3:
   NEXT 
62 FOR X = 0 TO 9:
   LAD%(X,0) = (FT%(X,0) * 2 + FT%(X,1)) / 3:
   LAD%(X,1) = (FT%(X,0) + 2 * FT%(X,1)) / 3:
   LAD%(X,3) = FT%(X,4):
   LAD%(X,2) = 159 - LAD%(X,3):
   NEXT 
68 HOME :
   HCOLOR= 3
69 POKE 34,20:
   POKE 33,29:
   HOME 
70 GOSUB 100:
   GOTO 1000
90 FOR X = 0 TO 9:
   FOR Y = 0 TO 5:
   PRINT LD%(X,Y);" ";:
   NEXT :
   PRINT :
   NEXT :
   GET Q$
100 HGR :
    FOR Y =  - 1 TO 1:
    FOR X =  - 1 TO 1
105 HPLOT 138,75 TO 142,75:
    HPLOT 140,73 TO 140,77
110 ZZ = TER%(TX + X,TY + Y):
    X1 = 65 + (X + 1) * 50:
    Y1 = (Y + 1) * 50
120 IF ZZ = 2 THEN  HPLOT X1 + 20,Y1 + 20 TO X1 + 30,Y1 + 20 TO X1 + 30,Y1 + 30 TO X1 + 20,Y1 + 30 TO X1 + 20,Y1 + 20
130 IF ZZ = 3 THEN  HPLOT X1 + 10,Y1 + 10 TO X1 + 20,Y1 + 10 TO X1 + 20,Y1 + 40 TO X1 + 10,Y1 + 40 TO X1 + 10,Y1 + 30 TO X1 + 40,Y1 + 30 TO X1 + 40,Y1 + 40 TO X1 + 30,Y1 + 40 TO X1 + 30,Y1 + 10 TO X1 + 40,Y1 + 10 TO X1 + 40,Y1 + 20 TO X1 + 10,Y1 + 20 TO X1 + 10,Y1 + 10
140 IF ZZ = 4 THEN  HPLOT X1 + 20,Y1 + 20 TO X1 + 30,Y1 + 30:
    HPLOT X1 + 20,Y1 + 30 TO X1 + 30,Y1 + 20
150 IF ZZ = 5 THEN  HPLOT X1,Y1 TO X1 + 50,Y1 TO X1 + 50,Y1 + 50 TO X1,Y1 + 50 TO X1,Y1:
    HPLOT X1 + 10,Y1 + 10 TO X1 + 10,Y1 + 40 TO X1 + 40,Y1 + 40 TO X1 + 40,Y1 + 10 TO X1 + 10,Y1 + 10 TO X1 + 40,Y1 + 40:
    HPLOT X1 + 10,Y1 + 40 TO X1 + 40,Y1 + 10
160 IF ZZ = 1 THEN  HPLOT X1 + 10,Y1 + 50 TO X1 + 10,Y1 + 40 TO X1 + 20,Y1 + 30 TO X1 + 40,Y1 + 30 TO X1 + 40,Y1 + 50:
    HPLOT X1,Y1 + 10 TO X1 + 10,Y1 + 10:
    HPLOT X1 + 50,Y1 + 10 TO X1 + 40,Y1 + 10:
    HPLOT X1,Y1 + 40 TO X1 + 10,Y1 + 40:
    HPLOT X1 + 40,Y1 + 40 TO X1 + 50,Y1 + 40
170 IF ZZ = 1 THEN  HPLOT X1 + 10,Y1 TO X1 + 10,Y1 + 20 TO X1 + 20,Y1 + 20 TO X1 + 20,Y1 + 30 TO X1 + 30,Y1 + 30 TO X1 + 30,Y1 + 10 TO X1 + 40,Y1 + 10 TO X1 + 40,Y1
190 NEXT :
    NEXT :
    RETURN 
200 HGR :
    DIS = 0:
    HCOLOR= 3
202 CENT = DNG%(PX + DX * DIS,PY + DY * DIS):
    LEFT = DNG%(PX + DX * DIS + DY,PY + DY * DIS - DX):
    RIGH = DNG%(PX + DX * DIS - DY,PY + DY * DIS + DX)
204 L1 = PER%(DIS,0):
    R1 = PER%(DIS,1):
    T1 = PER%(DIS,2):
    B1 = PER%(DIS,3):
    L2 = PER%(DIS + 1,0):
    R2 = PER%(DIS + 1,1):
    T2 = PER%(DIS + 1,2):
    B2 = PER%(DIS + 1,3)
205 CENT =  INT (CENT):
    LEFT =  INT (LEFT):
    RIGHT =  INT (RIGHT)
206 MC =  INT (CENT / 10):
    CENT = CENT - MC * 10:
    LEFT =  INT ((LEFT / 10 -  INT (LEF / 10)) * 10 + .1):
    RIGH =  INT ((RIGH / 10 -  INT (RIG / 10)) * 10 + .1)
208 IF DIS = 0 THEN 216
210 IF CENT = 1 OR CENT = 3 OR CENT = 4 THEN  HPLOT L1,T1 TO R1,T1 TO R1,B1 TO L1,B1 TO L1,T1
212 IF CENT = 1 OR CENT = 3 THEN EN = 1:
    GOTO 260
214 IF CENT = 4 THEN  HPLOT CD%(DIS,0),CD%(DIS,3) TO CD%(DIS,0),CD%(DIS,2) TO CD%(DIS,1),CD%(DIS,2) TO CD%(DIS,1),CD%(DIS,3):
    EN = 1:
    GOTO 260
216 IF LEFT = 1 OR LEFT = 3 OR LEFT = 4 THEN  HPLOT L1,T1 TO L2,T2:
    HPLOT L1,B1 TO L2,B2
218 IF RIGH = 1 OR RIGH = 3 OR RIGH = 4 THEN  HPLOT R1,T1 TO R2,T2:
    HPLOT R1,B1 TO R2,B2
220 IF LEFT = 4 AND DIS > 0 THEN  HPLOT LD%(DIS,0),LD%(DIS,4) TO LD%(DIS,0),LD%(DIS,2) TO LD%(DIS,1),LD%(DIS,3) TO LD%(DIS,1),LD%(DIS,5)
222 IF LEFT = 4 AND DIS = 0 THEN  HPLOT 0,LD%(DIS,2) - 3 TO LD%(DIS,1),LD%(DIS,3) TO LD%(DIS,1),LD%(DIS,5)
224 IF RIGH = 4 AND DIS > 0 THEN  HPLOT 279 - LD%(DIS,0),LD%(DIS,4) TO 279 - LD%(DIS,0),LD%(DIS,2) TO 279 - LD%(DIS,1),LD%(DIS,3) TO 279 - LD%(DIS,1),LD%(DIS,5)
226 IF RIGH = 4 AND DIS = 0 THEN  HPLOT 279,LD%(DIS,2) - 3 TO 279 - LD%(DIS,1),LD%(DIS,3) TO 279 - LD%(DIS,1),LD%(DIS,5)
228 IF LEFT = 3 OR LEFT = 1 OR LEFT = 4 THEN 234
230 IF DIS <  > 0 THEN  HPLOT L1,T1 TO L1,B1
232 HPLOT L1,T2 TO L2,T2 TO L2,B2 TO L1,B2
234 IF RIGH = 3 OR RIGH = 1 OR RIGH = 4 THEN 240
236 IF DIS <  > 0 THEN  HPLOT R1,T1 TO R1,B1
238 HPLOT R1,T2 TO R2,T2 TO R2,B2 TO R1,B2
240 IF CENT = 7 OR CENT = 9 THEN  HPLOT FT%(DIS,0),FT%(DIS,4) TO FT%(DIS,2),FT%(DIS,5) TO FT%(DIS,3),FT%(DIS,5) TO FT%(DIS,1),FT%(DIS,4) TO FT%(DIS,0),FT%(DIS,4)
242 IF CENT = 8 THEN  HPLOT FT%(DIS,0),158 - FT%(DIS,4) TO FT%(DIS,2),158 - FT%(DIS,5) TO FT%(DIS,3),158 - FT%(DIS,5) TO FT%(DIS,1),158 - FT%(DIS,4) TO FT%(DIS,0),158 - FT%(DIS,4)
244 IF CENT = 7 OR CENT = 8 THEN BASE = LAD%(DIS,3):
    TP = LAD%(DIS,2):
    LX = LAD%(DIS,0):
    RX = LAD%(DIS,1):
    HPLOT LX,BA TO LX,TP:
    HPLOT RX,TP TO RX,BA
246 IF CENT = 7 OR CENT = 8 THEN Y1 = (BA * 4 + TP) / 5:
    Y2 = (BA * 3 + TP * 2) / 5:
    Y3 = (BA * 2 + TP * 3) / 5:
    Y4 = (BA + TP * 4) / 5:
    HPLOT LX,Y1 TO RX,Y1:
    HPLOT LX,Y2 TO RX,Y2:
    HPLOT LX,Y3 TO RX,Y3:
    HPLOT LX,Y4 TO RX,Y4
248 IF DIS > 0 AND CENT = 5 THEN  HPLOT 139 - 10 / DIS,PER%(DIS,3) TO 139 - 10 / DIS,PER%(DIS,3) - 10 / DIS TO 139 + 10 / DIS,PER%(DIS,3) - 10 / DIS TO 139 + 10 / DIS,PER%(DIS,3) TO 139 - 10 / DIS,PER%(DIS,3)
249 IF CENT = 5 AND DIS > 0 THEN  INVERSE :
    PRINT "CHEST!":
    NORMAL 
250 IF DIS > 0 AND CENT = 5 THEN  HPLOT 139 - 10 / DIS,PER%(DIS,3) - 10 / DIS TO 139 - 5 / DIS,PER%(DIS,3) - 15 / DIS TO 139 + 15 / DIS,PER%(DIS,3) - 15 / DIS TO 139 + 15 / DIS,PER%(DIS,3) - 5 / DIS TO 139 + 10 / DIS,PER%(DIS,3)
252 IF DIS > 0 AND CENT = 5 THEN  HPLOT 139 + 10 / DIS,PER%(DIS,3) - 10 / DIS TO 139 + 15 / DIS,PER%(DIS,3) - 15 / DIS
260 IF MC < 1 THEN 490
265 B = 79 + YY%(DIS):
    C = 139
266 INVERSE :
    IF MC = 8 THEN  PRINT "CHEST!";:
    CALL  - 868:
    PRINT :
    NORMAL :
    GOTO 269
267 PRINT M$(MC);:
    CALL  - 868:
     PRINT :
    NORMAL 
269 IF DIS = 0 THEN 490
270 ON MC GOTO 300,310,320,330,340,350,360,370,380,390
280 GOTO 490
300 HPLOT C - 23 / DIS,B TO C - 15 / DIS,B TO C - 15 / DI,B - 15 / DI TO C - 8 / DI,B - 30 / DI TO C + 8 / DI,B - 30 / DI TO C + 15 / DI,B - 15 / DI TO C + 15 / DI,B TO C + 23 / DI,B
301 HPLOT C,B - 26 / DI TO C,B - 65 / DI:
    HPLOT C - 2 / DI + .5,B - 38 / DI TO C + 2 / DI + .5,B - 38 / DI:
    HPLOT C - 3 / DI + .5,B - 45 / DI TO C + 3 / DI + .5,B - 45 / DI:
    HPLOT C - 5 / DI + .5,B - 53 / DI TO C + 5 / DI + .5,B - 53 / DI
302 HPLOT C - 23 / DI,B - 56 / DI TO C - 30 / DI,B - 53 / DI TO C - 23 / DI,B - 45 / DI TO C - 23 / DI,B - 53 / DI TO C - 8 / DI,B - 38 / DI
303 HPLOT C - 15 / DI,B - 45 / DI TO C - 8 / DI,B - 60 / DI TO C + 8 / DI,B - 60 / DI TO C + 15 / DI,B - 45 / DI:
    HPLOT C + 15 / DI,B - 42 / DI TO C + 15 / DI,B - 57 / DI:
    HPLOT C + 12 / DI,B - 45 / DI TO C + 20 / DI,B - 45 / DI
304 HPLOT C,B - 75 / DI TO C - 5 / DI + .5,B - 80 / DI TO C - 8 / DI,B - 75 / DI TO C - 5 / DI + .5,B - 65 / DI TO C + 5 / DI + .5,B - 65 / DI TO C + 5 / DI + .5,B - 68 / DI TO C - 5 / DI + .5,B - 68 / DI TO C - 5 / DI + .5,B - 65 / DI
305 HPLOT  TO C + 5 / DI + .5,B - 65 / DI TO C + 8 / DI,B - 75 / DI TO C + 5 / DI + .5,B - 80 / DI TO C - 5 / DI + .5,B - 80 / DI:
    HPLOT C - 5 / DI + .5,B - 72 / DI:
    HPLOT C + 5 / DI + .5,B - 72 / DI
309 GOTO 490
310 HPLOT C,B - 56 / DI TO C,B - 8 / DI TO C + 10 / DI,B TO C + 30 / DI,B TO C + 30 / DI,B - 45 / DI TO C + 10 / DI,B - 64 / DI TO C,B - 56 / DI
311 HPLOT  TO C - 10 / DI,B - 64 / DI TO C - 30 / DI,B - 45 / DI TO C - 30 / DI,B TO C - 10 / DI,B TO C,B - 8 / DI
312 HPLOT C - 10 / DI,B - 64 / DI TO C - 10 / DI,B - 75 / DI TO C,B - 83 / DI TO C + 10 / DI,B - 75 / DI TO C,B - 79 / DI TO C - 10 / DI,B - 75 / DI TO C,B - 60 / DI TO C + 10 / DI,B - 75 / DI TO C + 10 / DI,B - 64 / DI
319 GOTO 490
320 HPLOT C + 5 / DI,B - 30 / DI TO C,B - 25 / DI TO C - 5 / DI,B - 30 / DI TO C - 15 / DI,B - 5 / DI TO C - 10 / DI,B TO C + 10 / DI,B TO C + 15 / DI,B - 5 / DI
321 HPLOT  TO C + 20 / DI,B - 5 / DI TO C + 10 / DI,B TO C + 15 / DI,B - 5 / DI TO C + 5 / DI,B - 30 / DI TO C + 10 / DI,B - 40 / DI TO C + 3 / DI + .5,B - 35 / DI TO C - 3 / DI + .5,B - 35 / DI TO C - 10 / DI,B - 40 / DI TO C - 5 / DI,B - 30 / DI
322 HPLOT C - 5 / DI,B - 33 / DI TO C - 3 / DI + .5,B - 30 / DI:
    HPLOT C + 5 / DI,B - 33 / DI TO C + 3 / DI + .5,B - 30 / DI:
    HPLOT C - 5 / DI,B - 20 / DI TO C - 5 / DI,B - 15 / DI
323 HPLOT C + 5 / DI,B - 20 / DI TO C + 5 / DI,B - 15 / DI:
     HPLOT C - 7 / DI,B - 20 / DI TO C - 7 / DI,B - 15 / DI:
     HPLOT C + 7 / DI,B - 20 / DI TO C + 7 / DI,B - 15 / DI
329 GOTO 490
330 HPLOT C,B TO C - 15 / DI,B TO C - 8 / DI,B - 8 / DI TO C - 8 / DI,B - 15 / DI TO C - 15 / DI,B - 23 / DI TO C - 15 / DI,B - 15 / DI TO C - 23 / DI,B - 23 / DI
331 HPLOT  TO C - 23 / DI,B - 45 / DI TO C - 15 / DI,B - 53 / DI TO C - 8 / DI,B - 53 / DI TO C - 15 / DI,B - 68 / DI TO C - 8 / DI,B - 75 / DI TO C,B - 75 / DI
332 HPLOT C,B TO C + 15 / DI,B TO C + 8 / DI,B - 8 / DI TO C + 8 / DI,B - 15 / DI TO C + 15 / DI,B - 23 / DI TO C + 15 / DI,B - 15 / DI TO C + 23 / DI,B - 23 / DI
333 HPLOT  TO C + 23 / DI,B - 45 / DI TO C + 15 / DI,B - 53 / DI TO C + 8 / DI,B - 53 / DI TO C + 15 / DI,B - 68 / DI TO C + 8 / DI,B - 75 / DI TO C,B - 75 / DI
334 HPLOT C - 15 / DI,B - 68 / DI TO C + 15 / DI,B - 68 / DI:
    HPLOT C - 8 / DI,B - 53 / DI TO C + 8 / DI,B - 53 / DI:
    HPLOT C - 23 / DI,B - 15 / DI TO C + 8 / DI,B - 45 / DI
335 HPLOT C - 8 / DI,B - 68 / DI TO C,B - 60 / DI TO C + 8 / DI,B - 68 / DI TO C + 8 / DI,B - 60 / DI TO C - 8 / DI,B - 60 / DI TO C - 8 / DI,B - 68 / DI
336 HPLOT C,B - 38 / DI TO C - 8 / DI,B - 38 / DI TO C + 8 / DI,B - 53 / DI TO C + 8 / DI,B - 45 / DI TO C + 15 / DI,B - 45 / DI TO C,B - 30 / DI TO C,B - 38 / DI
339 GOTO 490
340 HPLOT C - 10 / DI,B - 15 / DI TO C - 10 / DI,B - 30 / DI TO C - 15 / DI,B - 20 / DI TO C - 15 / DI,B - 15 / DI TO C - 15 / DI,B TO C + 15 / DI,B TO C + 15 / DI,B - 15 / DI TO C - 15 / DI,B - 15 / DI
341 HPLOT C - 15 / DI,B - 10 / DI TO C + 15 / DI,B - 10 / DI:
    HPLOT C - 15 / DI,B - 5 / DI TO C + 15 / DI,B - 5 / DI
342 HPLOT C,B - 15 / DI TO C - 5 / DI,B - 20 / DI TO C - 5 / DI,B - 35 / DI TO C + 5 / DI,B - 35 / DI TO C + 5 / DI,B - 20 / DI TO C + 10 / DI,B - 15 / DI
343 HPLOT C - 5 / DI,B - 20 / DI TO C + 5 / DI,B - 20 / DI:
     HPLOT C - 5 / DI,B - 25 / DI TO C + 5 / DI,B - 25 / DI:
     HPLOT C - 5 / DI,B - 30 / DI TO C + 5 / DI,B - 30 / DI
344 HPLOT C - 10 / DI,B - 35 / DI TO C - 10 / DI,B - 40 / DI TO C - 5 / DI,B - 45 / DI TO C + 5 / DI,B - 45 / DI TO C + 10 / DI,B - 40 / DI TO C + 10 / DI,B - 35 / DI
345 HPLOT C - 10 / DI,B - 40 / DI TO C,B - 45 / DI TO C + 10 / DI,B - 40 / DI
346 HPLOT C - 5 / DI,B - 40 / DI TO C + 5 / DI,B - 40 / DI TO C + 15 / DI,B - 30 / DI TO C,B - 40 / DI TO C - 15 / DI,B - 30 / DI TO C - 5 / DI + .5,B - 40 / DI
349 GOTO 490
350 HPLOT C - 20 / DI,79 - YY%(DIS) TO C - 20 / DI,B - 88 / DI TO C - 10 / DI,B - 83 / DI TO C + 10 / DI,B - 83 / DI TO C + 20 / DI,B - 88 / DI TO C + 20 / DI,79 - YY%(DIS) TO C - 20 / DI,79 - YY%(DI)
351 HPLOT C - 20 / DI,B - 88 / DI TO C - 30 / DI,B - 83 / DI TO C - 30 / DI,B - 78 / DI:
    HPLOT C + 20 / DI,B - 88 / DI TO C + 30 / DI,B - 83 / DI TO C + 40 / DI,B - 83 / DI
352 HPLOT C - 15 / DI,B - 86 / DI TO C - 20 / DI,B - 83 / DI TO C - 20 / DI,B - 78 / DI TO C - 30 / DI,B - 73 / DI TO C - 30 / DI,B - 68 / DI TO C - 20 / DI,B - 63 / DI
353 HPLOT C - 10 / DI,B - 83 / DI TO C - 10 / DI,B - 58 / DI TO C,B - 50 / DI:
    HPLOT C + 10 / DI,B - 83 / DI TO C + 10 / DI,B - 78 / DI TO C + 20 / DI,B - 73 / DI TO C + 20 / DI,B - 40 / DI
354 HPLOT C + 15 / DI,B - 85 / DI TO C + 20 / DI,B - 78 / DI TO C + 30 / DI,B - 76 / DI TO C + 30 / DI,B - 60 / DI
355 HPLOT C,B - 83 / DI TO C,B - 73 / DI TO C + 10 / DI,B - 68 / DI TO C + 10 / DI,B - 63 / DI TO C,B - 58 / DI
359 GOTO 490
360 HPLOT C + 5 / DI + .5,B - 10 / DI TO C - 5 / DI + .5,B - 10 / DI TO C,B - 15 / DI TO C + 10 / DI,B - 20 / DI TO C + 5 / DI + .5,B - 15 / DI TO C + 5 / DI + .5,B - 10 / DI
361 HPLOT  TO C + 7 / DI + .5,B - 6 / DI TO C + 5 / DI + .5,B - 3 / DI TO C - 5 / DI + .5,B - 3 / DI TO C - 7 / DI + .5,B - 6 / DI TO C - 5 / DI + .5,B - 10 / DI
362 HPLOT C + 2 / DI + .5,B - 3 / DI TO C + 5 / DI + .5,B TO C + 8 / DI,B:
    HPLOT C - 2 / DI + .5,B - 3 / DI TO C - 5 / DI + .5,B TO C - 8 / DI,B:
    HPLOT C + 3 / DI + .5,B - 8 / DI:
    HPLOT C - 3 / DI + .5,B - 8 / DI:
    HPLOT C + 3 / DI + .5,B - 5 / DI TO C - 3 / DI + .5,B - 5 / DI
363 GOTO 490
370 HPLOT 139 - 10 / DIS,PER%(DIS,3) TO 139 - 10 / DIS,PER%(DIS,3) - 10 / DIS TO 139 + 10 / DIS,PER%(DIS,3) - 10 / DIS TO 139 + 10 / DIS,PER%(DIS,3) TO 139 - 10 / DIS,PER%(DIS,3)
371 HPLOT 139 - 10 / DIS,PER%(DIS,3) - 10 / DIS TO 139 - 5 / DIS,PER%(DIS,3) - 15 / DIS TO 139 + 15 / DIS,PER%(DIS,3) - 15 / DIS TO 139 + 15 / DIS,PER%(DIS,3) - 5 / DIS TO 139 + 10 / DIS,PER%(DIS,3)
372 HPLOT 139 + 10 / DIS,PER%(DIS,3) - 10 / DIS TO 139 + 15 / DIS,PER%(DIS,3) - 15 / DIS
373 GOTO 490
380 HPLOT C - 14 / DI,B - 46 / DI TO C - 12 / DI,B - 37 / DI TO C - 20 / DI,B - 32 / DI TO C - 30 / DI,B - 32 / DI TO C - 22 / DI,B - 24 / DI TO C - 40 / DI,B - 17 / DI TO C - 40 / DI,B - 7 / DI TO C - 38 / DI,B - 5 / DI TO C - 40 / DI,B - 3 / DI TO C - 40 / DI,B
381 HPLOT  TO C - 36 / DI,B TO C - 34 / DI,B - 2 / DI TO C - 32 / DI,B TO C - 28 / DI,B TO C - 28 / DI,B - 3 / DI TO C - 30 / DI,B - 5 / DI TO C - 28 / DI,B - 7 / DI TO C - 28 / DI,B - 15 / DI TO C,B - 27 / DI
382 HPLOT C + 14 / DI,B - 46 / DI TO C + 12 / DI,B - 37 / DI TO C + 20 / DI,B - 32 / DI TO C + 30 / DI,B - 32 / DI TO C + 22 / DI,B - 24 / DI TO C + 40 / DI,B - 17 / DI TO C + 40 / DI,B - 7 / DI TO C + 38 / DI,B - 5 / DI TO C + 40 / DI,B - 3 / DI TO C + 40 / DI,B
383 HPLOT  TO C + 36 / DI,B TO C + 34 / DI,B - 2 / DI TO C + 32 / DI,B TO C + 28 / DI,B TO C + 28 / DI,B - 3 / DI TO C + 30 / DI,B - 5 / DI TO C + 28 / DI,B - 7 / DI TO C + 28 / DI,B - 15 / DI TO C,B - 27 / DI
384 HPLOT C + 6 / DI,B - 48 / DI TO C + 38 / DI,B - 41 / DI TO C + 40 / DI,B - 42 / DI TO C + 18 / DI,B - 56 / DI TO C + 12 / DI,B - 56 / DI TO C + 10 / DI,B - 57 / DI TO C + 8 / DI,B - 56 / DI TO C - 8 / DI,B - 56 / DI TO C - 10 / DI,B - 58 / DI TO C + 14 / DI,B - 58 / DI TO C + 16 / DI,B - 59 / DI
385 HPLOT  TO C + 8 / DI,B - 63 / DI TO C + 6 / DI,B - 63 / DI TO C + 2 / DI + .5,B - 70 / DI TO C + 2 / DI + .5,B - 63 / DI TO C - 2 / DI + .5,B - 63 / DI TO C - 2 / DI + .5,B - 70 / DI TO C - 6 / DI,B - 63 / DI TO C - 8 / DI,B - 63 / DI TO C - 16 / DI,B - 59 / DI TO C - 14 / DI,B - 58 / DI
386 HPLOT  TO C - 10 / DI,B - 57 / DI TO C - 12 / DI,B - 56 / DI TO C - 18 / DI,B - 56 / DI TO C - 36 / DI,B - 47 / DI TO C - 36 / DI,B - 39 / DI TO C - 28 / DI,B - 41 / DI TO C - 28 / DI,B - 46 / DI TO C - 20 / DI,B - 50 / DI TO C - 18 / DI,B - 50 / DI TO C - 14 / DI,B - 46 / DI
387 GOTO 3087
390 HPLOT C + 6 / DI,B - 60 / DI TO C + 30 / DI,B - 90 / DI TO C + 60 / DI,B - 30 / DI TO C + 60 / DI,B - 10 / DI TO C + 30 / DI,B - 40 / DI TO C + 15 / DI,B - 40 / DI
391 HPLOT C - 6 / DI,B - 60 / DI TO C - 30 / DI,B - 90 / DI TO C - 60 / DI,B - 30 / DI TO C - 60 / DI,B - 10 / DI TO C - 30 / DI,B - 40 / DI TO C - 15 / DI,B - 40 / DI
392 HPLOT C,B - 25 / DI TO C + 6 / DI,B - 25 / DI TO C + 10 / DI,B - 20 / DI TO C + 12 / DI,B - 10 / DI TO C + 10 / DI,B - 6 / DI TO C + 10 / DI,B TO C + 14 / DI,B TO C + 15 / DI,B - 5 / DI TO C + 16 / DI,B TO C + 20 / DI,B
393 HPLOT  TO C + 20 / DI,B - 6 / DI TO C + 18 / DI,B - 10 / DI TO C + 18 / DI,B - 20 / DI TO C + 15 / DI,B - 30 / DI TO C + 15 / DI,B - 45 / DI TO C + 40 / DI,B - 60 / DI TO C + 40 / DI,B - 70 / DI
394 HPLOT  TO C + 10 / DI,B - 55 / DI TO C + 6 / DI,B - 60 / DI TO C + 10 / DI,B - 74 / DI TO C + 6 / DI,B - 80 / DI TO C + 4 / DI + .5,B - 80 / DI TO C + 3 / DI + .5,B - 82 / DI TO C + 2 / DI + .5,B - 80 / DI TO C,B - 80 / DI
395 HPLOT C,B - 25 / DI TO C - 6 / DI,B - 25 / DI TO C - 10 / DI,B - 20 / DI TO C - 12 / DI,B - 10 / DI TO C - 10 / DI,B - 6 / DI TO C - 10 / DI,B TO C - 14 / DI,B TO C - 15 / DI,B - 5 / DI TO C - 16 / DI,B TO C - 20 / DI,B
396 HPLOT  TO C - 20 / DI,B - 6 / DI TO C - 18 / DI,B - 10 / DI TO C - 18 / DI,B - 20 / DI TO C - 15 / DI,B - 30 / DI TO C - 15 / DI,B - 45 / DI TO C - 40 / DI,B - 60 / DI TO C - 40 / DI,B - 70 / DI
397 HPLOT  TO C - 10 / DI,B - 55 / DI TO C - 6 / DI,B - 60 / DI TO C - 10 / DI,B - 74 / DI TO C - 6 / DI,B - 80 / DI TO C - 4 / DI + .5,B - 80 / DI TO C - 3 / DI + .5,B - 82 / DI TO C - 2 / DI + .5,B - 80 / DI TO C,B - 80 / DI
398 HPLOT C - 6 / DI,B - 25 / DI TO C,B - 6 / DI TO C + 10 / DI,B TO C + 4 / DI + .5,B - 8 / DI TO C + 6 / DI,B - 25 / DI:
    HPLOT C - 40 / DI,B - 64 / DI TO C - 40 / DI,B - 90 / DI TO C - 52 / DI,B - 80 / DI TO C - 52 / DI,B - 40 / DI
399 HPLOT C + 40 / DI,B - 86 / DI TO C + 38 / DI,B - 92 / DI TO C + 42 / DI,B - 92 / DI TO C + 40 / DI,B - 86 / DI TO C + 40 / DI,B - 50 / DI
400 HPLOT C + 4 / DI + .5,B - 70 / DI TO C + 6 / DI,B - 74 / DI:
    HPLOT C - 4 / DI + .5,B - 70 / DI TO C - 6 / DI,B - 74 / DI:
    HPLOT C,B - 64 / DI TO C,B - 60 / DI:
    GOTO 490
490 IF EN = 1 THEN EN = 0:
    RETURN 
491 DIS = DIS + 1:
    GOTO 202
500 ZZ =  RND ( -  ABS (LN) - TX * 10 - TY * 1000 + INOUT * 31.4)
501 FOR X = 1 TO 9:
    FOR Y = 1 TO 9:
    DNG%(X,Y) = 0:
    NEXT :
    NEXT 
510 FOR X = 0 TO 10:
    DNG%(X,0) = 1:
    DNG%(X,10) = 1:
    DNG%(0,X) = 1:
    DNG%(10,X) = 1:
    NEXT 
520 FOR X = 2 TO 8 STEP 2:
    FOR Y = 1 TO 9:
    DNG%(X,Y) = 1:
    DNG(Y,X) = 1:
    NEXT :
    NEXT 
530 FOR X = 2 TO 8 STEP 2:
    FOR Y = 1 TO 9 STEP 2
540 IF  RND (1) > .95 THEN DNG%(X,Y) = 2
541 IF  RND (1) > .95 THEN DNG%(Y,X) = 2
542 IF  RND (1) > .6 THEN DNG%(Y,X) = 3
543 IF  RND (1) > .6 THEN DNG%(X,Y) = 3
544 IF  RND (1) > .6 THEN DNG%(X,Y) = 4
545 IF  RND (1) > .6 THEN DNG%(Y,X) = 4
546 IF  RND (1) > .97 THEN DNG%(Y,X) = 9
547 IF  RND (1) > .97 THEN DNG%(X,Y) = 9
548 IF  RND (1) > .94 THEN DNG%(X,Y) = 5
549 IF  RND (1) > .94 THEN DNG%(Y,X) = 5
568 NEXT :
    NEXT 
569 DNG%(2,1) = 0:
    IF INOUT / 2 =  INT (INOUT / 2) THEN DNG%(7,3) = 7:
    DNG%(3,7) = 8
570 IF INOUT / 2 <  >  INT (INOUT / 2) THEN DNG%(7,3) = 8:
    DNG%(3,7) = 7
580 IF INOUT = 1 THEN DNG%(1,1) = 8:
    DNG%(7,3) = 0
585 GOSUB 2000
590 RETURN 
1000 VTAB (24):
     PRINT "COMMAND? ";:
     CALL  - 868
1001 X =  PEEK ( - 16384):
     IF X < 128 THEN 1001
1002 Q =  FRE (0)
1010 POKE  - 16368,0
1030 IF X = 141 THEN  ON  SGN (INOUT) + 1 GOTO 1100,1150
1040 IF X = 149 THEN  ON  SGN (INOUT) + 1 GOTO 1200,1250
1050 IF X = 136 THEN  ON  SGN (INOUT) + 1 GOTO 1300,1350
1060 IF X = 175 THEN  ON  SGN (INOUT) + 1 GOTO 1400,1450
1070 IF X = 216 THEN  ON  SGN (INOUT) + 1 GOTO 1500,1550
1080 IF X = 193 OR X = 155 THEN  ON  SGN (INOUT) + 1 GOTO 1600,1650
1081 IF X = 160 THEN  PRINT "PASS":
     GOTO 1090
1085 IF X = 211 THEN 1700
1086 IF X = 208 THEN  IF PA = 1 THEN PA = 0:
     PRINT "PAUSE OFF":
     GOTO 1000
1087 IF X = 208 THEN  IF PA = 0 THEN PA = 1:
     PRINT "PAUSE ON":
     GOTO 1000
1089 PRINT "HUH?":
     GOTO 1000
1090 PW(0) = PW(0) - 1 +  SGN (INOUT) * .9:
     IF PW(0) < 0 THEN C(0) = 0:
     PRINT :
     PRINT "YOU HAVE STARVED!!!!!":
     GOTO 1093
1091 POKE 33,40:
     VTAB (22):
     HTAB (30):
     PRINT "FOOD=";PW(0);:
     CALL  - 868:
     VTAB (23):
     HTAB (30):
     PRINT "H.P.=";C(0);:
     CALL  - 868:
     VTAB (24):
     HTAB (30):
     PRINT "GOLD=";C(5);:
     CALL  - 868:
     POKE 33,29:
     HTAB (1)
1092 PW(0) =  INT (PW(0) * 10) / 10
1093 IF C(0) <  = 0 THEN 6000
1095 IF IN > 0 THEN  GOSUB 4000:
     IF C(0) <  = 0 THEN 1093
1096 POKE 33,40:
     VTAB (22):
     HTAB (30):
     PRINT "FOOD=";PW(0);:
     CALL  - 868:
     VTAB (23):
     HTAB (30):
     PRINT "H.P.=";C(0);:
     CALL  - 868:
     VTAB (24):
     HTAB (30):
     PRINT "GOLD=";C(5);:
     CALL  - 868:
     POKE 33,29:
     HTAB (1)
1097 IF INOUT = 0 THEN  GOSUB 100:
     GOTO 1000
1098 IF INOUT > 0 THEN  GOSUB 200:
     GOTO 1000
1100 PRINT "NORTH":
     IF TER%(TX,TY - 1) = 1 THEN  PRINT "YOU CAN'T PASS THE MOUNTAINS":
     GOTO 1090
1110 TY = TY - 1:
     GOTO 1090
1150 IF DNG%(PX + DX,PY + DY) <  > 1 AND DNG%(PX + DX,PY + DY) < 10 THEN PX = PX + DX:
     PY = PY + DY
1155 PRINT "FORWARD"
1160 IF DNG%(PX,PY) = 2 THEN  PRINT "AAARRRGGGHHH!!! A TRAP!":
     C(0) = C(0) -  INT ( RND (1) * INOUT + 3):
     MR = 1:
     INOUT = INOUT + 1:
     PRINT "FALLING TO LEVEL ";IN:
     GOSUB 500:
     GOTO 1090
1165 Z = 0
1170 IF DNG%(PX,PY) = 5 THEN DNG%(PX,PY) = 0:
     PRINT "GOLD!!!!!":
     Z =  INT ( RND (1) * 5 * INOUT + INOUT):
     PRINT Z;"-PIECES OF EIGHT":
     C(5) = C(5) + Z
1175 IF Z > 0 THEN Z =  INT ( RND (1) * 6):
     PRINT "AND A ";W$(Z):
     PW(Z) = PW(Z) + 1:
     GOTO 1090
1190 GOTO 1090
1200 PRINT "EAST":
     IF TER%(TX + 1,TY) = 1 THEN  PRINT "YOU CAN'T PASS THE MOUNTAINS":
     GOTO 1090
1210 TX = TX + 1:
     GOTO 1090
1250 PRINT "TURN RIGHT"
1255 IF DX <  > 0 THEN DY = DX:
     DX = 0:
     GOTO 1090
1260 DX =  - DY:
     DY = 0:
     GOTO 1090
1300 PRINT "WEST":
     IF TER%(TX - 1,TY) = 1 THEN  PRINT "YOU CAN'T PASS THE MOUNTAINS":
     GOTO 1090
1310 TX = TX - 1:
     GOTO 1090
1350 PRINT "TURN LEFT"
1355 IF DX <  > 0 THEN DY =  - DX:
     DX = 0:
     GOTO 1090
1360 DX = DY:
     DY = 0:
     GOTO 1090
1400 PRINT "SOUTH":
     IF TER%(TX,TY + 1) = 1 THEN  PRINT "YOU CAN'T PASS THE MOUNTAINS":
     GOTO 1090
1410 TY = TY + 1:
     GOTO 1090
1450 PRINT "TURN AROUND":
     DX =  - DX:
     DY =  - DY:
     GOTO 1090
1500 IF TE%(TX,TY) = 3 THEN  GOSUB 60080:
     GOSUB 60200:
     GOTO 1090
1510 IF TE%(TX,TY) = 4 AND INOUT = 0 THEN  PRINT "GO DUNGEON":
     PRINT "PLEASE WAIT ":
     INOUT = 1:
     GOSUB 500:
     DX = 1:
     DY = 0:
     PX = 1:
     PY = 1:
     GOTO 1090
1515 IF TE%(TX,TY) = 5 THEN 7000
1520 PRINT "HUH?":
     GOTO 1000
1550 IF DNG%(PX,PY) <  > 7 AND DNG%(PX,PY) <  > 9 THEN 1580
1555 PRINT "GO DOWN TO LEVEL ";INOUT + 1
1560 INOUT = INOUT + 1:
     GOSUB 500:
     MR = 1:
     GOTO 1090
1580 IF DNG%(PX,PY) <  > 8 THEN  PRINT "HUH?":
     GOTO 1090
1581 IF IN = 1 THEN  PRINT "LEAVE DUNGEON":
     IN = 0:
     GOTO 1586
1584 PRINT "GO UP TO LEVEL ";INOUT - 1
1585 INOUT = INOUT - 1:
     GOSUB 500:
     MR = 1
1586 IF IN = 0 THEN  PRINT "THOU HAST GAINED":
     PRINT LK;" HIT POINTS":
     C(0) = C(0) + LK:
     LK = 0
1587 GOTO 1090
1600 GOTO 1090
1650 MN = 0:
     DAM = 0:
     PRINT "ATTACK":
     PRINT "WHICH WEAPON ";:
      GET Q$
1651 IF Q$ = "R" THEN DAM = 10:
      PRINT "RAPIER":
     IF PW(1) < 1 THEN  PRINT "NOT OWNED":
     GOTO 1650
1652 IF Q$ = "A" THEN DAM = 5:
     PRINT "AXE":
     IF PW(2) < 1 THEN  PRINT "NOT OWNED":
     GOTO 1650
1653 IF Q$ = "S" THEN DAM = 1:
     PRINT "SHIELD":
     IF PW(3) < 1 THEN  PRINT "NOT OWNED":
     GOTO 1650
1654 IF Q$ = "B" THEN DAM = 4:
     PRINT "BOW":
     IF PW(4) < 1 THEN  PRINT "NOT OWNED":
     GOTO 1650
1655 IF Q$ = "M" THEN  PRINT "MAGIC AMULET":
     GOTO 1680
1656 IF Q$ = "B" AND PT$ = "M" THEN  PRINT "MAGES CAN'T USE BOWS!":
     GOTO 1650
1657 IF Q$ = "R" AND PT$ = "M" THEN  PRINT "MAGES CAN'T USE RAPIERS!":
     GOTO 1650
1659 IF DAM = 0 THEN  PRINT "HANDS"
1660 IF DAM = 5 OR DAM = 4 THEN 1670
1661 MN = DN%(PX + DX,PY + DY) / 10:
     MN =  INT (MN)
1662 IF MN < 1 OR C(2) -  RND (1) * 25 < MN + INOUT THEN  PRINT "YOU MISSED":
     GOTO 1668
1663 PRINT "HIT!!! ":
     DAM = ( RND (1) * DAM + C(1) / 5):
     MZ%(MN,1) = MZ%(MN,1) - DAM
1664 PRINT M$(MN);"'S HIT POINTS=";MZ%(MN,1)
1665 IF MZ%(MN,1) < 1 THEN  PRINT "THOU HAST KILLED A ";M$(MN):
     PRINT "THOU SHALT RECEIVE":
     DA =  INT (MN + IN):
     PRINT DA;" PIECES OF EIGHT"
1666 IF MZ%(MN,1) < 1 THEN C(5) =  INT (C(5) + DA):
     DNG%(ML%(MN,0),ML%(MN,1)) = DNG%(ML%(MN,0),ML%(MN,1)) - 10 * MN:
     MZ%(MN,0) = 0
1667 LK = LK +  INT (MN * IN / 2):
     IF MN = TASK THEN TASK =  - TASK
1668 IF PA = 1 THEN  PRINT "-CR- TO CONT. ";:
     INPUT Q$
1669 GOTO 1090
1670 IF DAM = 5 THEN  PRINT "TO THROW OR SWING:
     ";:
     GET Q$:
     IF Q$ <  > "T" THEN  PRINT "SWING":
     GOTO 1661
1671 IF DAM = 5 THEN  PRINT "THROW":
     PW(2) = PW(2) - 1
1672 FOR Y = 1 TO 5:
     IF PX + DX * Y < 1 OR PX + DX * Y > 9 OR PY + DY * Y > 9 OR PY + DY * Y < 0 THEN 1662
1673 MN = DNG%(PX + DX * Y,PY + DY * Y):
     MN =  INT (MN / 10):
      IF MN > 0 THEN 1662
1674 NEXT :
     GOTO 1662
1680 IF PW(5) < 1 THEN  PRINT "NONE OWNED":
     GOTO 1650
1681 IF PT$ = "F" THEN Q =  INT ( RND (1) * 4 + 1):
     GOTO 1685
1682 PRINT "1-LADDER-UP","2-LADDER-DN":
     PRINT "3-KILL","4-BAD??":
     PRINT "CHOICE ";:
     GET Q$:
     Q =  VAL (Q$):
     PRINT Q:
     IF Q < 1 OR Q > 4 THEN 1682
1683 IF  RND (1) > .75 THEN  PRINT "LAST CHARGE ON THIS AMULET!":
     PW(5) = PW(5) - 1
1685 ON Q GOTO 1686,1690,1691,1692
1686 PRINT "LADDER UP":
     DNG%(PX,PY) = 8:
     GOTO 1090
1690 PRINT "LADDER DOWN":
     DNG%(PX,PY) = 7:
     GOTO 1090
1691 PRINT "MAGIC ATTACK":
     DAM = 10 + INOUT:
     GOTO 1672
1692 ON  INT ( RND (1) * 3 + 1) GOTO 1693,1695,1697
1693 PRINT "YOU HAVE BEEN TURNED":
     PRINT "INTO A TOAD!"
1694 FOR Z2 = 1 TO 4:
     C(Z2) = 3:
      NEXT Z2:
     GOTO 1090
1695 PRINT "YOU HAVE BEEN TURNED":
     PRINT "INTO A LIZARD MAN":
     FOR Y = 0 TO 4:
     C(Y) =  INT (C(Y) * 2.5):
     NEXT :
     GOTO 1090
1697 PRINT "BACKFIRE":
     C(0) = C(0) / 2:
     GOTO 1090
1700 GOSUB 60080:
     HOME :
     PRINT "PRESS -CR- TO CONTINUE";:
     INPUT Q$:
     TEXT :
     HOME :
     GOTO 1090
2000 NM = 0:
     FOR X = 1 TO 10
2005 MZ%(X,0) = 0:
     MZ%(X,1) = X + 3 + INOUT
2010 IF X - 2 > INO OR  RND (1) > .4 THEN 2090
2020 ML%(X,0) =  INT ( RND (1) * 9 + 1):
     ML%(X,1) =  INT ( RND (1) * 9 + 1)
2030 IF DNG%(ML%(X,0),ML%(X,1)) <  > 0 THEN 2020
2040 IF ML%(X,0) = PX AND ML%(X,1) = PY THEN 2020
2050 DNG%(ML%(X,0),ML%(X,1)) = X * 10
2051 MZ%(X,0) = 1
2052 NM = NM + 1
2055 MZ%(X,1) = X * 2 + IN * 2 * LP
2090 NEXT :
     RETURN 
3087 HPLOT C - 28 / DI,B - 41 / DI TO C + 30 / DI,B - 55 / DI:
     HPLOT C + 28 / DI,B - 58 / DI TO C + 22 / DI,B - 56 / DI TO C + 22 / DI,B - 53 / DI TO C + 28 / DI,B - 52 / DI TO C + 34 / DI,B - 54 / DI:
     HPLOT C + 20 / DI,B - 50 / DI TO C + 26 / DI,B - 47 / DI
3088 HPLOT C + 10 / DI,B - 58 / DI TO C + 10 / DI,B - 61 / DI TO C + 4 / DI,B - 58 / DI:
      HPLOT C - 10 / DI,B - 58 / DI TO C - 10 / DI,B - 61 / DI TO C - 4 / DI,B - 58 / DI:
      HPLOT C + 40 / DI,B - 9 / DI TO C + 50 / DI,B - 12 / DI TO C + 40 / DI,B - 7 / DI
3089 HPLOT C - 8 / DI,B - 25 / DI TO C + 6 / DI,B - 7 / DI TO C + 28 / DI,B - 7 / DI TO C + 28 / DI,B - 9 / DI TO C + 20 / DI,B - 9 / DI TO C + 6 / DI,B - 25 / DI:
     GOTO 490
4000 FOR MM = 1 TO 10:
     IF MZ%(MM,0) = 0 THEN 4999
4010 RA =  SQR ((PX - ML%(MM,0)) ^ 2 + (PY - ML%(MM,1)) ^ 2)
4011 IF MZ%(MM,1) < IN * LP THEN 4030
4020 IF RA < 1.3 THEN 4500
4025 IF MM = 8 AND RA < 3 THEN 4999
4030 X1 =  SGN (PX - ML%(MM,0)):
     Y1 =  SGN (PY - ML%(MM,1))
4031 IF MZ%(MM,1) < IN * LP THEN X1 =  - X1:
     Y1 =  - Y1
4035 IF Y1 = 0 THEN 4045
4040 D = DNG%(ML%(MM,0),(ML%(MM,1) + Y1 + .5)):
     IF D = 1 OR D > 9 OR D = 2 THEN 4045
4042 X1 = 0:
     GOTO 4050
4045 Y1 = 0:
     IF X1 = 0 THEN 4050
4046 D = DN%((ML%(MM,0) + X1 + .5),ML%(MM,1)):
     IF D = 1 OR D > 9 OR D = 2 THEN X1 = 0:
     GOTO 4081
4050 DNG%(ML%(MM,0),ML%(MM,1)) = DNG%(ML%(MM,0),ML%(MM,1)) - 10 * MM
4055 IF ML%(MM,0) + X1 = PX AND ML%(MM,1) + Y1 = PY THEN 4999
4060 ML%(MM,0) = ML%(MM,0) + X1:
     ML%(MM,1) = ML%(MM,1) + Y1
4080 DNG%(ML%(MM,0),ML%(MM,1)) = (DNG%(ML%(MM,0),ML%(MM,1)) + 10 * MM + .5)
4081 IF X1 <  > 0 OR Y1 <  > 0 THEN 4999
4082 IF MZ%(MM,1) < IN * LP AND RA < 1.3 THEN 4500
4083 IF MZ%(MM,1) < IN * LP THEN MZ%(MM,1) = MZ%(MM,1) + MM + IN
4499 GOTO 4999
4500 IF MM = 2 OR MM = 7 THEN 4600
4509 PRINT "YOU ARE BEING ATTACKED":
     PRINT "BY A ";M$(MM)
4510 IF  RND (1) * 20 -  SGN (PW(3)) - C(3) + MM + IN < 0 THEN  PRINT "MISSED":
     GOTO 4525
4520 PRINT "HIT":
     C(0) = C(0) -  INT ( RND (1) * MM + IN)
4525 IF PA = 1 THEN  PRINT "-CR- TO CONT. ";:
     INPUT Q$
4530 GOTO 4999
4600 IF  RND (1) < .5 THEN 4509
4610 IF MM = 7 THEN PW(0) =  INT (PW(0) / 2):
     PRINT "A GREMLIN STOLE SOME FOOD":
     GOTO 4525
4620 ZZ =  INT ( RND (1) * 6):
     IF PW(ZZ) < 1 THEN 4620
4630 PRINT "A THIEF STOLE A ";W$(ZZ):
     PW(ZZ) = PW(ZZ) - 1:
     GOTO 4525
4999 NEXT :
     RETURN 
6000 POKE 33,40:
     PRINT :
     PRINT :
     PRINT "        WE MOURN THE PASSING OF"
6005 IF  LEN (PN$) > 22 THEN PN$ = ""
6010 IF PN$ = "" THEN PN$ = "THE PEASANT"
6020 PN$ = PN$ + " AND HIS COMPUTER"
6030 HTAB (20 -  INT ( LEN (PN$) / 2)):
     PRINT PN$
6035 PRINT "  TO INVOKE A MIRACLE OF RESSURECTION"
6040 PRINT "             <HIT ESC KEY>";
6050 IF  PEEK ( - 16384) = 155 THEN 1
6060 GOTO 6050
7000 HOME :
     TEXT :
     HOME 
7001 CALL 62450
7010 IF PN$ <  > "" THEN 7500
7020 PRINT :
     PRINT :
     PRINT "     WELCOME PEASANT INTO THE HALLS OF":
     PRINT "THE MIGHTY LORD BRITISH. HEREIN THOU MAYCHOOSE TO DARE BATTLE WITH THE EVIL":
     PRINT "CREATURES OF THE DEPTHS, FOR GREAT":
     PRINT "REWARD!"
7030 PRINT :
     PRINT "WHAT IS THY NAME PEASANT ";:
     INPUT PN$
7040 PRINT "DOEST THOU WISH FOR GRAND ADVENTURE ? ";:
     GET Q$:
     IF Q$ <  > "Y" THEN  PRINT :
     PRINT "THEN LEAVE AND BEGONE!":
     PN$ = "":
     PRINT :
     PRINT "         PRESS -SPACE- TO CONT.";:
     GET Q$:
     GOTO 1090
7045 PRINT 
7050 PRINT :
     PRINT "GOOD! THOU SHALT TRY TO BECOME A ":
     PRINT "KNIGHT!!!":
     PRINT :
     PRINT "THY FIRST TASK IS TO GO INTO THE":
     PRINT "DUNGEONS AND TO RETURN ONLY AFTER":
     PRINT "KILLING A(N) ";:
     TASK =  INT (C(4) / 3):
     PRINT M$(TASK)
7060 PRINT :
     PRINT "     GO NOW UPON THIS QUEST, AND MAY":
     PRINT "LADY LUCK BE FAIR UNTO YOU.....":
     PRINT ".....ALSO I, BRITISH, HAVE INCREASED":
     PRINT "EACH OF THY ATTRIBUTES BY ONE!"
7070 PRINT :
     PRINT "         PRESS -SPACE- TO CONT.";:
     GET Q$:
     FOR X = 0 TO 5:
     C(X) = C(X) + 1:
     NEXT :
     HOME :
     GOTO 1090
7500 IF TASK > 0 THEN  PRINT :
     PRINT :
     PRINT PN$;" WHY HAST THOU RETURNED?":
     PRINT "THOU MUST KILL A(N) ";M$(TASK):
     PRINT "GO NOW AND COMPLETE THY QUEST!":
     PRINT :
     PRINT "         PRESS -SPACE- TO CONT.";:
     GET Q$:
     HOME :
     GOTO 1090
7510 PRINT :
     PRINT :
     PRINT :
     PRINT "AAHH!!.....";PN$:
     PRINT :
     PRINT "THOU HAST ACOMPLISHED THY QUEST!":
     IF  ABS (TASK) = 10 THEN 7900
7520 PRINT "UNFORTUNATELY, THIS IS NOT ENOUGH TO":
     PRINT "BECOME A KNIGHT.":
     TASK =  ABS (TASK) + 1:
     PRINT :
     PRINT "NOW THOU MUST KILL A(N) ";M$(TASK)
7530 GOTO 7060
7900 TEXT :
     HOME :
     PRINT :
     PRINT :
     PRINT :
     PN$ = "LORD " + PN$:
     PRINT "     ";PN$;","
7910 PRINT "       THOU HAST PROVED THYSELF WORTHY":
     PRINT "OF KNIGHTHOOD, CONTINUE PLAY IF THOU":
     PRINT "DOTH WISH, BUT THOU HAST ACOMPLISHED":
     PRINT "THE MAIN OBJECTIVE OF THIS GAME..."
7920 IF LP = 10 THEN 7950
7930 PRINT :
     PRINT "   NOW MAYBE THOU ART FOOLHEARTY":
     PRINT "ENOUGH TO TRY DIFFICULTY LEVEL ";LP + 1
7940 GOTO 7070
7950 PRINT :
     PRINT "...CALL CALIFORNIA PACIFIC COMPUTER":
     PRINT "AT (415)-569-9126 TO REPORT THIS":
     PRINT "AMAZING FEAT!"
7990 GOTO 7070
60000 TEXT :
      HOME :
      VTAB (5):
      INPUT "TYPE THY LUCKY NUMBER.....";Q$:
      LN =  VAL (Q$)
60005 VTAB (7):
      INPUT "LEVEL OF PLAY (1-10)......";Q$:
      LP =  INT ( VAL (Q$))
60006 IF LP < 1 OR LP > 10 THEN 60005
60010 ZZ =  RND ( -  ABS (LN))
60020 DATA   "HIT POINTS.....","STRENGTH.......","DEXTERITY......","STAMINA........","WISDOM.........","GOLD..........."
60025 DIM PW(5)
60030 DIM C$(5):
      FOR X = 0 TO 5:
      READ C$(X):
      NEXT 
60040 DIM C(5)
60041 DIM M$(10),ML%(10,1),MZ%(10,1)
60042 DATA       "SKELETON","THIEF","GIANT RAT","ORC","VIPER","CARRION CRAWLER","GREMLIN","MIMIC","DAEMON","BALROG"
60043 FOR X = 1 TO 10:
      READ M$(X):
      NEXT 
60050 FOR X = 0 TO 5:
      C(X) =  INT ( SQR ( RND (1)) * 21 + 4):
      NEXT X
60060 HOME :
      VTAB (8):
      FOR X = 0 TO 5:
      PRINT C$(X),C(X):
      NEXT :
      PRINT :
      PRINT "SHALT THOU PLAY WITH THESE QUALITIES?":
       HTAB (20):
      GET Q$:
      IF Q$ <  > "Y" THEN 60050
60061 VTAB (15):
      PRINT :
      PRINT "AND SHALT THOU BE A FIGHTER OR A MAGE?":
      HTAB (20):
      GET PT$
60062 IF PT$ = "M" OR PT$ = "F" THEN 60070
60063 GOTO 60061
60070 DIM W$(5):
      DATA    "FOOD","RAPIER","AXE","SHIELD","BOW AND ARROWS","MAGIC AMULET":
      FOR X = 0 TO 5:
      READ W$(X):
      NEXT 
60075 GOSUB 60080:
      GOSUB 60200:
       RETURN 
60080 TEXT :
      HOME :
      PRINT :
      PRINT :
      PRINT "     STAT'S              WEAPONS":
      PRINT :
      FOR X = 0 TO 5:
      PRINT C$(X);C(X); TAB( 24);"0-";W$(X):
      NEXT :
      POKE 34,12:
      HOME :
      POKE 35,15
60081 VTAB (11):
      HTAB (18):
      PRINT "Q-QUIT"
60082 IF PW(0) > 0 THEN  CALL 62450
60085 FOR Z = 0 TO 5:
      VTAB (5 + Z):
      HTAB (25 -  LEN ( STR$ (PW(Z)))):
      PRINT PW(Z);:
      NEXT 
60090 VTAB (17):
      HTAB (5):
      PRINT "PRICE";:
      HTAB (15):
      PRINT "DAMAGE";:
      HTAB (25):
      PRINT "ITEM"
60100 FOR X = 0 TO 5:
      VTAB (19 + X):
      HTAB (25):
      PRINT W$(X):
      NEXT 
60110 VTAB (19):
      HTAB (5):
      PRINT "1 FOR 10":
      HTAB (15):
      PRINT "N/A":
      VTAB (20):
      HTAB (5):
      PRINT "8":
      HTAB (15):
      PRINT "1-10":
      VTAB (21):
      HTAB (5):
      PRINT "5":
      HTAB (15):
      PRINT "1-5"
60120 VTAB (22):
      HTAB (5):
      PRINT "6":
      HTAB (15):
      PRINT "1":
      VTAB (23):
      HTAB (5):
      PRINT "3":
      HTAB (15):
      PRINT "1-4":
      VTAB (24):
      HTAB (5):
      PRINT "15":
      HTAB (15):
      PRINT "?????":
      HOME 
60130 RETURN 
60200 HOME :
      PRINT "WELCOME TO THE ADVENTURE SHOP"
60210 PRINT "WHICH ITEM SHALT THOU BUY ";:
      GET Q$:
      IF Q$ = "Q" THEN  PRINT :
      PRINT "BYE":
      FOR Z = 1 TO 1000:
      NEXT :
       TEXT :
      HOME :
      RETURN 
60215 Z =  - 1
60220 IF Q$ = "F" THEN  PRINT "FOOD":
      Z = 0:
      P = 1
60221 IF Q$ = "R" THEN  PRINT "RAPIER":
      Z = 1:
      P = 8
60222 IF Q$ = "A" THEN  PRINT "AXE":
      Z = 2:
      P = 5
60223 IF Q$ = "S" THEN  PRINT "SHIELD":
      Z = 3:
      P = 6
60224 IF Q$ = "B" THEN  PRINT "BOW":
      Z = 4:
      P = 3
60225 IF Q$ = "M" THEN  PRINT "AMULET":
      Z = 5:
      P = 15
60226 IF Z =  - 1 THEN  PRINT Q$:
      PRINT "I'M SORRY WE DON'T HAVE THAT.":
      GOTO 60210
60227 IF Q$ = "R" AND PT$ = "M" THEN  PRINT "I'M SORRY MAGES":
      PRINT "CAN'T USE THAT!":
       GOTO 60210
60228 IF Q$ = "B" AND PT$ = "M" THEN  PRINT "I'M SORRY MAGES":
      PRINT "CAN'T USE THAT!":
       GOTO 60210
60230 IF C(5) - P < 0 THEN  PRINT "M'LORD THOU CAN NOT AFFORD THAT ITEM.":
      GOTO 60210
60235 IF Z = 0 THEN PW(Z) = PW(Z) + 9
60236 PW(Z) = PW(Z) + 1:
      C(5) = C(5) - P
60237 VTAB (10):
      HTAB (16):
      PRINT C(5);"  "
60240 VTAB (5 + Z):
      HTAB (25 -  LEN ( STR$ (PW(Z)))):
      PRINT PW(Z);:
      HTAB (1):
      VTAB (14):
       PRINT 
60250 GOTO 60210
