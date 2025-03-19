1 Mov PCenter
2 Pnext = PCenter
3 While (1)
4     If (M_in(8)) Then
5         If ((M_in(9)=0) And (Pnext.X < 960)) Then
6             Pnext.X = Pnext.X +50
7         EndIf
8         If ((M_in(9)=1) And (Pnext.X > 420)) Then
9             Pnext.X = Pnext.X -50
10         EndIf
11     EndIf
12     Mov Pnext
13 WEnd
PCenter=(368.580,0.000,329.360,90.000,0.000,90.000)(6,0)
Pnext=(425.770,-8.840,325.440,90.000,0.000,90.000,0.000,0.000)(6,0)
