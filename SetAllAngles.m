function [ output_args ] = SetAllAngles( Motors, thetas )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    for i=1:3
    RotateMotorToAngle(Motors(i),thetas(i));
    fprintf('asd\n')
    end
fprintf('asd\n')
end

