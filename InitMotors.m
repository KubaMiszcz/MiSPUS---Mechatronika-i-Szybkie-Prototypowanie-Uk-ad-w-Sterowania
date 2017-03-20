function [Motors] = InitMotors()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
COM_CloseNXT all
global hNXT;
hNXT = COM_OpenNXT();       % look for USB devices
fprintf('asd\n')

COM_SetDefaultNXT(hNXT);    % sets global default handle
speed=100;
fprintf('asd\n')

Motors(1) = NXTMotor('A', 'Power', speed,'ActionAtTachoLimit', 'Brake'); %ustawic 'HoldBreak'
Motors(2) = NXTMotor('B', 'Power', speed,'ActionAtTachoLimit', 'Brake');
Motors(3) = NXTMotor('C', 'Power', speed,'ActionAtTachoLimit', 'Brake'); 
fprintf('asd\n')


% tutazerowanie pozychi i zpaamietanie stanu zerowego 
end

