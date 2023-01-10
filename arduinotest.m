clear all; instrreset;

motorc(1:3,1:3,1)=[1,1,200;2,1,200;3,1,500];
motorc(1:3,1:3,2)=[1,1,100;2,1,100;3,1,500];
motorc(1:3,1:3,3)=[1,2,300;2,2,300;3,1,500];

global arduino;
port_name = 'COM5';
if ~exist('serial_flag','var') || serial_flag == 0
    %serial_flag = setupSerialArduino(port_name);
    flag = 1;
    arduino = serial(port_name);
    set(arduino,'DataBits',8);
    set(arduino,'StopBits',1);
    set(arduino,'BaudRate',9600);
    set(arduino,'Parity','none');
    fopen(arduino);
    a = 'b';
    while (a~='a') 
        a=fread(arduino,1,'uchar');
    end
    fprintf(arduino,'%c','a');
    disp('Serial Communication setup complete...') 
end

pause(1) % To allow the motor to be ready. You can experiment with this.
stepper_speed=[30,60,30];
buffer_pause = 3;

for marker=1:3;
for xyz=1:3;
    formatSpec = ' %u %s %u %s %u%s';
    command=sprintf(formatSpec,motorc(xyz,1,marker),',',motorc(xyz,2,marker),',',motorc(xyz,3,marker),'*');
    fprintf(arduino, '%s', command);
    pause(motorc(xyz,3,marker) * 60/(200 * stepper_speed(xyz))+1);
end
    pause(motorc(xyz,3,marker) * 60/(200 * stepper_speed(xyz))+3);
end
fclose(arduino);