function a=finalproject1(markerscam)
% Home Bottom Left Fiducial
fidcamhome=[ 56.8546  -53.2824  383.0000]';
%% Picking out the Correct Fiducial
xdistance = markerscam(2,1) - markerscam(3,1);
ydistance = markerscam(2,2) - markerscam(3,2);
theta = atand(ydistance/xdistance);
%% Transformation Matricies
% Marker Coordinates
correct=[-1,0,0;
         3,6,6.5;
         -5,-5,-5];

MC=[44,79,113;-79.6, -57.6, -77.6;57.2, 57.2, 57.2];
MCcorrect=MC+correct;
% % Marker Transformation to Fiducials
MF=[1,0,0,0;0,1,0,0;0,0,1,0;0,0,0,1];
% %Robot to Home Fiducial
RHF=[1,0,0,-32;0,1,0,134;0,0,1,3;0,0,0,1];
% %Fiducials in camera frame
FC=[1,0,0,1;0,1,0,1;0,0,1,1;0,0,0,1];
% %% Compute Transformations
for i=1:3
MF(1:3,4)=[MCcorrect(1,i)*cosd(theta)+MCcorrect(2,i)*sind(theta);MCcorrect(2,i)*cosd(theta)+MCcorrect(1,i)*sind(theta);MCcorrect(3,i)];
FC(1:3,4)=markerscam(2,1:3)'-fidcamhome;
FC(2,4)=-1*FC(2,4);
FC(1,4)=-1*FC(1,4);
coords=MF*FC*RHF;
CoordsF(i,:)=coords(1:3,4);
end
%% 

rfdist=CoordsF;
rfdist(4,:)=[0,0,0];
currdist = zeros(1,3);
for b=1:4
for a=1:3
    motorc(a,:,b)=movementalg(a,rfdist(b,a),currdist(a));
end
    currdist=rfdist(b,:);
    currdist(3)=0;
end
a=motorc
b=motorc*8/200
%% Send to Arduino
instrreset;
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
%     a = 'b';
%     while (a~='a') 
%         a=fread(arduino,1,'uchar');
%     end
%     fprintf(arduino,'%c','a');
    disp('Serial Communication setup complete...') 
end

pause(3) % To allow the motor to be ready. You can experiment with this.
stepper_speed=[30,60,30];
buffer_pause = 3;

for marker=1:4;
for xyz=1:3;
    formatSpec = ' %u %s %u %s %u%s';
    command=sprintf(formatSpec,motorc(xyz,1,marker),',',motorc(xyz,2,marker),',',motorc(xyz,3,marker),'*');
    fprintf(arduino, '%s', command);
    %fprintf(command);
    pause(motorc(xyz,3,marker) * 60/(200 * stepper_speed(xyz))+3);
end
    pause(motorc(xyz,3,marker) * 60/(200 * stepper_speed(xyz))+3);
end
fclose(arduino);

display('Complete')

%% Internal Functions
function motor=movementalg(a,dist,x)
    motor(1)=a;
if(dist>x)
    motor(2)=1;
else 
    motor(2)=2;
end
    if(a==3)
        motor(3)=floor(abs((dist-x)/39*200));
    else
        motor(3)=floor(abs((dist-x)/8*200));
    end
end
end