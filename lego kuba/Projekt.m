% KOMUNIKATy
close all;
%zmienne globalne
global rad;rad=pi/180;
global deg;deg=180/pi;
global hNXT;
global speed;
global Robot;

%tworzenie instanci itp
Motors = InitMotors();
r=[48,64,130,180];%dlugosci segmentow
Robot=CreateRobot(r,Motors);%parametry robota, dodac speed?
MoveToPositionXYZ(Robot,[200,10,200])

  
 %zamykanie polaczen
%  COM_CloseNXT(hNXT);