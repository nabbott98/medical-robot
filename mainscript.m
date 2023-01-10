clear all;
results = load('calibration/Calib_Results.mat');
KK = inv(results.inv_KK);
Z = 300; %%results.Tc_21(3);


% %%
% % Enter the correct integer to the webcam function as per the connection
% % on your computer.

if ~exist('cam','var')
    cam = webcam(1); 
    cam.Resolution = '1280x720';
end
centroids=1;

figure
while ~(length(centroids)==3)
    img = snapshot(cam);
    %img=imread('calibration/Image33.jpg');
    centroids = compute_marker_location(img);
    pause(1);
    if length(centroids)==3;
        display('Enter if Fiducials are correct');
        display('Click if Fiducials are incorrect');
        w=waitforbuttonpress;
        
        if w==0;
            centroids=1;
        end
    end
end
clear('cam');
%% 
% Convert the Pixel coordinates to the Camera Reference Frame. You must
% complete the code in pixel_to_camera.m

errornew=1000;
errorold=1001;
while errornew<errorold;
markers_cam = pixel_to_camera(centroids, KK, Z);
x=sqrt((markers_cam(2,2)-markers_cam(1,2))^2+(markers_cam(2,1)-markers_cam(1,1))^2);
y=sqrt((markers_cam(3,1)-markers_cam(2,1))^2+(markers_cam(3,2)-markers_cam(2,2))^2);
errorold=errornew;
errornew=abs((abs(x)-74)+(abs(y)-110));
Z=Z+1;
end

Z=Z-1;
markers_cam = pixel_to_camera(centroids, KK, Z);


motor=finalproject1(markers_cam);



