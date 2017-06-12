function [Motors] = InitMotors()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
COM_CloseNXT all
global hNXT;
hNXT = COM_OpenNXT();       % look for USB devices
fprintf('asd\n')

COM_SetDefaultNXT(hNXT);    % sets global default handle
speed=0;
fprintf('asd\n')

Motors(1) = NXTMotor('B', 'Power', speed,'ActionAtTachoLimit', 'HoldBrake'); %ustawic 'HoldBreak'
Motors(2) = NXTMotor('A', 'Power', speed,'ActionAtTachoLimit', 'HoldBrake');
Motors(3) = NXTMotor('C', 'Power', speed,'ActionAtTachoLimit', 'HoldBrake'); 

Motors(1).ResetPosition();
Motors(2).ResetPosition();
Motors(3).ResetPosition();

% tutazerowanie pozychi i zpaamietanie stanu zerowego 
end

