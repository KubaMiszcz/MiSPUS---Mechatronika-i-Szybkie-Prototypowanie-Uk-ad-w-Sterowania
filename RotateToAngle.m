function [ output_args ] = RotateMotorToAngle(Motor, theta) 
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

Motor.Stop('off');
Motor.ResetPosition();

Motor.Power = Motor.Power*sign(theta)
Motor.TachoLimit= abs(theta)
Motor.SendToNXT()
Motor.WaitFor()
fprintf('asd\n')



end

