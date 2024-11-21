1 Def Plt 1,PRow0,PRow4,PRow7,  ,8,0,3   ' Define a 3-point arc pallet.
2 Mov PHOME
3 *PickUpDisc
4 Mov PickUp
5 Mov PRow0
6 *WaitForSinal9
7 If M_In(9)=1 Then GoTo *Signal9Received Else GoTo *SleepHalfSecond
8 *Signal9Received                             ' First stop is outside the game
9     Def Inte SelectedRow                      ' Initialize the counter
10     SelectedRow% = M_In8(10)+1
11     PosNext = Plt 1, SelectedRow%                    ' Calculates the M1th position
12     Mvs PosNext
13     Dly 0.5
14     Mvs PRow0
15     GoTo *PickUpDisc
16 *SleepHalfSecond
17     Dly(0.5)
18     GoTo *WaitForSinal9
PRow0=(+419.23,-229.14,+339.93,+90.00,-0.00,+90.00)(6,0)
PRow4=(+419.23,-0.00,+339.93,+90.00,-0.00,+90.00)(6,0)
PRow7=(+419.23,+168.04,+339.93,+90.00,-0.00,+90.00)(6,0)
PHOME=(+500.00,+0.00,+789.00,-0.00,-0.00,+0.00)(6,0)
PickUp=(+501.51,-294.58,+190.80,-180.00,-0.00,+0.00)(7,0)
PosNext=(+419.23,+168.04,+339.93,+90.00,+0.00,+90.00)(6,0)
