function markers_cam = pixel_to_camera(centroids, KK, Z)
% Function pixel_to_camera converts the pixel coordinates to the camera
% metric coordinates.
% The function takes in centroids of the three markers as a 3x2 matrix, the
% camera instrinsic KK and the actual Z distance from the camera to the
% markers and returns the position of the markers in the Camera Reference
% Frame in a 3x2 matrix.

%%%%%%%%%%%%%%%%%%% YOUR CODE BELOW THIS LINE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
z=[Z Z Z]';
markers_cam = [Z*(centroids(:,1)-KK(1,3))/(-KK(1,1)) Z*(centroids(:,2)-KK(2,3))/(-KK(2,2)) z];
end