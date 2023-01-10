% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1413.027698334959496 ; 1413.601836199743730 ];

%-- Principal point:
cc = [ 639.500000000000000 ; 359.500000000000000 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.059102066029773 ; 0.100017090361563 ; 0.005675324290636 ; 0.000773870861792 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 4.610302090146910 ; 5.130791339269675 ];

%-- Principal point uncertainty:
cc_error = [ 0.000000000000000 ; 0.000000000000000 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.027284464620040 ; 0.320403804773325 ; 0.001092059929716 ; 0.000663867304244 ; 0.000000000000000 ];

%-- Image size:
nx = 1280;
ny = 720;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 20;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 0;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 1.994849e+00 ; -1.177782e+00 ; 6.224371e-01 ];
Tc_1  = [ 3.065727e+01 ; 6.477092e+01 ; 4.477848e+02 ];
omc_error_1 = [ 1.384369e-03 ; 8.933995e-04 ; 1.550479e-03 ];
Tc_error_1  = [ 9.656130e-02 ; 1.330430e-01 ; 1.749845e+00 ];

%-- Image #2:
omc_2 = [ 1.648761e+00 ; -1.700384e+00 ; 9.848221e-01 ];
Tc_2  = [ 8.663545e+01 ; 3.091684e+01 ; 3.410386e+02 ];
omc_error_2 = [ 9.397132e-04 ; 8.980093e-04 ; 1.166978e-03 ];
Tc_error_2  = [ 5.623677e-02 ; 8.221943e-02 ; 1.236476e+00 ];

%-- Image #3:
omc_3 = [ 2.287071e+00 ; 1.255286e+00 ; -3.587784e-01 ];
Tc_3  = [ -1.743960e+02 ; -7.532657e+01 ; 8.260796e+02 ];
omc_error_3 = [ 2.777833e-03 ; 1.659792e-03 ; 3.663358e-03 ];
Tc_error_3  = [ 1.106939e-01 ; 1.942225e-01 ; 2.679071e+00 ];

%-- Image #4:
omc_4 = [ 2.024687e+00 ; 1.042795e+00 ; -4.791443e-01 ];
Tc_4  = [ -1.479362e+02 ; -6.220887e+01 ; 5.619990e+02 ];
omc_error_4 = [ 1.337869e-03 ; 8.406826e-04 ; 1.501102e-03 ];
Tc_error_4  = [ 6.174713e-02 ; 1.345756e-01 ; 1.692745e+00 ];

%-- Image #5:
omc_5 = [ 2.659483e+00 ; 6.132345e-01 ; -3.874152e-01 ];
Tc_5  = [ -1.121219e+02 ; 9.429645e+00 ; 6.015335e+02 ];
omc_error_5 = [ 3.038916e-03 ; 9.499345e-04 ; 3.259725e-03 ];
Tc_error_5  = [ 6.420645e-02 ; 1.105930e-01 ; 1.907727e+00 ];

%-- Image #6:
omc_6 = [ 1.841711e+00 ; 1.965375e+00 ; -4.510647e-01 ];
Tc_6  = [ -9.863317e+01 ; -1.090475e+02 ; 6.802452e+02 ];
omc_error_6 = [ 1.951578e-03 ; 1.985378e-03 ; 3.710466e-03 ];
Tc_error_6  = [ 9.801732e-02 ; 1.816557e-01 ; 2.101966e+00 ];

%-- Image #7:
omc_7 = [ 2.051174e+00 ; 2.103993e+00 ; -2.786458e-01 ];
Tc_7  = [ -8.352553e+01 ; -1.019364e+02 ; 8.155705e+02 ];
omc_error_7 = [ 4.295753e-03 ; 4.204600e-03 ; 8.592704e-03 ];
Tc_error_7  = [ 1.159290e-01 ; 1.820852e-01 ; 2.764133e+00 ];

%-- Image #8:
omc_8 = [ 1.118764e+00 ; 2.569791e+00 ; -6.591390e-01 ];
Tc_8  = [ 4.010407e+01 ; -1.325019e+02 ; 7.795916e+02 ];
omc_error_8 = [ 1.405309e-03 ; 2.580145e-03 ; 4.323822e-03 ];
Tc_error_8  = [ 1.475442e-01 ; 2.222345e-01 ; 2.400090e+00 ];

%-- Image #9:
omc_9 = [ 2.554880e+00 ; 1.638982e+00 ; -4.111722e-02 ];
Tc_9  = [ -8.592325e+01 ; -6.489673e+01 ; 7.802242e+02 ];
omc_error_9 = [ 7.709173e-03 ; 4.598644e-03 ; 1.308070e-02 ];
Tc_error_9  = [ 9.264211e-02 ; 1.259969e-01 ; 3.019102e+00 ];

%-- Image #10:
omc_10 = [ -1.644829e+00 ; -2.492668e+00 ; -4.943272e-02 ];
Tc_10  = [ -2.537033e+01 ; -1.108530e+02 ; 7.085845e+02 ];
omc_error_10 = [ 3.691144e-03 ; 5.295216e-03 ; 1.122642e-02 ];
Tc_error_10  = [ 1.272650e-01 ; 1.324041e-01 ; 2.497089e+00 ];

%-- Image #11:
omc_11 = [ -2.377797e+00 ; -1.860227e+00 ; -9.417535e-02 ];
Tc_11  = [ -1.392442e+02 ; -6.055145e+01 ; 6.841230e+02 ];
omc_error_11 = [ 5.218390e-03 ; 3.696757e-03 ; 9.538496e-03 ];
Tc_error_11  = [ 1.026671e-01 ; 1.172038e-01 ; 2.336527e+00 ];

%-- Image #12:
omc_12 = [ 9.687317e-01 ; 2.657543e+00 ; -4.796980e-01 ];
Tc_12  = [ 6.318895e+00 ; -1.244059e+02 ; 7.558732e+02 ];
omc_error_12 = [ 1.360563e-03 ; 3.066578e-03 ; 5.597216e-03 ];
Tc_error_12  = [ 1.357020e-01 ; 1.993585e-01 ; 2.362413e+00 ];

%-- Image #13:
omc_13 = [ 9.856808e-01 ; 2.656893e+00 ; -4.442838e-01 ];
Tc_13  = [ 1.312654e+01 ; -1.246006e+02 ; 7.512560e+02 ];
omc_error_13 = [ 1.407473e-03 ; 3.108731e-03 ; 5.816656e-03 ];
Tc_error_13  = [ 1.355463e-01 ; 1.943062e-01 ; 2.370393e+00 ];

%-- Image #14:
omc_14 = [ 1.410404e+00 ; 2.206962e+00 ; -3.430892e-01 ];
Tc_14  = [ -7.566964e+01 ; -1.211635e+02 ; 8.099138e+02 ];
omc_error_14 = [ 1.798656e-03 ; 2.370448e-03 ; 4.565095e-03 ];
Tc_error_14  = [ 1.309765e-01 ; 1.952609e-01 ; 2.586613e+00 ];

%-- Image #15:
omc_15 = [ 1.882239e+00 ; 2.120295e+00 ; -8.917433e-01 ];
Tc_15  = [ 5.732498e+00 ; -9.639784e+01 ; 7.991874e+02 ];
omc_error_15 = [ 2.208327e-03 ; 2.229989e-03 ; 3.591823e-03 ];
Tc_error_15  = [ 1.460820e-01 ; 1.987151e-01 ; 2.416663e+00 ];

%-- Image #16:
omc_16 = [ 8.163784e-01 ; 2.333630e+00 ; -1.333777e+00 ];
Tc_16  = [ 4.433375e+01 ; -8.053979e+01 ; 7.364612e+02 ];
omc_error_16 = [ 1.004706e-03 ; 1.447914e-03 ; 1.823743e-03 ];
Tc_error_16  = [ 1.310600e-01 ; 1.703850e-01 ; 2.051300e+00 ];

%-- Image #17:
omc_17 = [ -2.035147e+00 ; -1.266571e+00 ; 5.977255e-03 ];
Tc_17  = [ -7.159896e+01 ; -3.668488e+01 ; 6.115492e+02 ];
omc_error_17 = [ 1.615067e-03 ; 1.103299e-03 ; 2.613424e-03 ];
Tc_error_17  = [ 8.518432e-02 ; 1.124728e-01 ; 2.003832e+00 ];

%-- Image #18:
omc_18 = [ -1.506667e+00 ; -2.235100e+00 ; -1.112086e+00 ];
Tc_18  = [ -2.418353e+01 ; -6.696311e+01 ; 5.127793e+02 ];
omc_error_18 = [ 1.272217e-03 ; 1.677606e-03 ; 2.173296e-03 ];
Tc_error_18  = [ 1.144545e-01 ; 1.484542e-01 ; 1.991751e+00 ];

%-- Image #19:
omc_19 = [ 2.225710e+00 ; 4.340609e-01 ; -2.809462e-01 ];
Tc_19  = [ -1.141880e+02 ; 1.928539e+00 ; 4.168218e+02 ];
omc_error_19 = [ 1.305635e-03 ; 6.278508e-04 ; 1.264875e-03 ];
Tc_error_19  = [ 4.591375e-02 ; 8.352366e-02 ; 1.340773e+00 ];

%-- Image #20:
omc_20 = [ 2.125032e+00 ; 1.498068e+00 ; -5.006914e-01 ];
Tc_20  = [ -1.262466e+02 ; -7.288058e+01 ; 7.410375e+02 ];
omc_error_20 = [ 2.275691e-03 ; 1.576308e-03 ; 3.068633e-03 ];
Tc_error_20  = [ 9.533954e-02 ; 1.719942e-01 ; 2.322876e+00 ];

