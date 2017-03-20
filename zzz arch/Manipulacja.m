COM_CloseNXT all
hNXT = COM_OpenNXT();       % look for USB devices
COM_SetDefaultNXT(hNXT);    % sets global default handle

th1=0;
th2=0;

mUp = NXTMotor('B', 'Power', 20,'ActionAtTachoLimit', 'Brake'); %ustawic 'HoldBreak'
mDown = NXTMotor('B', 'Power', -20, 'ActionAtTachoLimit', 'Brake'); 

mUp.Stop('off');
mUp.ResetPosition();

% data = mUp.ReadFromNXT();
% pos  = data.Position;

mUp.TachoLimit= 90;
mUp.SendToNXT();
mUp.WaitFor();

% mDown.TachoLimit=90;
% mDown.SendToNXT();
% mDown.WaitFor();


% but never forget to clean up after your work!!!
COM_CloseNXT(hNXT);