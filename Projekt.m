% KOMUNIKATy

close all;

%zmienne globalne
global hNXT;
global speed;

%tworzenie instanci itp
Motors = InitMotors();

%testy sterowanie itd
Thetas45=[45,45,45];
ThetasZero=[0,0,0]; %sprawdzenie czy skalibrowany
SetAngles(Motors, thetas);


%co do dorobienia
a=[100,100,100];%dlugosci segmentow
Robot1=CreateRobot(a,Motors)%parametry robota, dodac speed?

maxX=200; %policz!
maxY=200; %policz!
maxZ=200; %policz!


positionZero=[0,0,0];
positionMaxZ=[0,0,maxZ];
positionMaxZ=[0,0,maxZ];
positionMaxZ=[0,0,maxZ];
position45=[0,0,maxZ];

position1=[0,0,maxZ];
position2=[0,0,maxZ];
position3=[0,0,maxZ];

MoveEndpointToPositionXYZ(Robot,position)

 
 
 
 
 
 
 
 
 %zamykanie polaczen
 cc(hNXT);