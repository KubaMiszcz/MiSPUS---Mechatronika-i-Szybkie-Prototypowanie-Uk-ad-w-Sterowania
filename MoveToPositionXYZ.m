function [ output_args ] = MoveToPositionXYZ(Robot, position)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    x=position(1);
	y=position(2);
	z=position(3);
	
    %sprawdzic warunki czy punkt w zasiegu
    fprintf('asd\n')
    
%     th1=
%     =ATAN(B38/B37)-ASIN((B34*SIN(G38))/(C37))

%     th2=
% =ACOS((B37^2+B38^2-B33^2-B34^2)/(2*B33*B34))

%prerob na atan2 bo sa dzielenia przez 0 albo dorob warunek ze gdy 0 to
%1e-12

end

