function [ thetas ] = MoveToPositionXYZ(Robot, position)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    x=position(1);
	y=position(2);
	z=position(3);
rad=pi/180;
deg=180/pi;
% czy punkt w zasiegu
% Z=sqrt(x^2+y^2+z^2); %odleglosc od OCS


    
% nasze DH:
% var=0;
% naglowki: [th a alfa d]
% DH=[0 0 0 0;          
%     var 48 90 64;
%     var 130 0 0;
%     var 180 0 0];

% przeliczenie na nowe wsp lokalne
%  GCS = regul aprawej reki XY a Z do gory
% rozbijamy na obrot w pionie - proste
% i dwa ostatnie rmaiona kinametyk odwrotna poziom =H
th1=atan2(y,x)*deg; %proste

% pion = V
    V=z-Robot.r(1); %48
% poziom =H
    H=sqrt(x^2+y^2);
    H-H-Robot.r(2); %odejmujemy dlugosc pierwszego czlonu=64
    fprintf('H=%f V=%f\n',H,V);
% i teraz liczymy th2 i th3
%###########
%      px=pz/sind(th1);
    px=H;
    py=V;
    a1=Robot.r(3);
    a2=Robot.r(4);
    
    a=px^2+py^2-a1^2-a2^2;
    b=2*a1*a2;
    th3=acosd(a/b);

    aa=(a2*sind(th3))/sqrt(px^2+py^2);
    bb=atan2(py,px)*180/pi;
    th2=-asind(aa)+bb;
%#############

% i teraz obracamy silniki
SetAllAngles(Robot.Motors,[th1 th2 th3]);
Robot.curTh1=th1;
Robot.curTh2=th2;
Robot.curTh3=th3;
% te current Th tro lepiej by bylo umiescic w motorach jako pole struktury


th=[th1,th2,th3];
    fprintf('Przesuwam Robota do XYZ=[%f, %f, %f]\n',x,y,z);
    fprintf('katy th=[%f, %f, %f]\n',th(1),th(2),th(3));


end

