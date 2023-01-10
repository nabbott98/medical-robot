% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1427.648265284971103 ; 1427.674701017980397 ];

%-- Principal point:
cc = [ 653.910408117692327 ; 307.931458799938696 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.042844248913017 ; 0.247899422821329 ; -0.006468557904144 ; 0.004879257451241 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 4.536145401024481 ; 4.968159769632517 ];

%-- Principal point uncertainty:
cc_error = [ 8.114245610394406 ; 6.881772955455927 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.025700279688607 ; 0.305209231447392 ; 0.001883809036172 ; 0.002389475275499 ; 0.000000000000000 ];

%-- Image size:
nx = 1280;
ny = 720;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 20;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 1.963740e+00 ; -1.164538e+00 ; 6.498343e-01 ];
Tc_1  = [ 2.605971e+01 ; 8.118874e+01 ; 4.507721e+02 ];
omc_error_1 = [ 4.206936e-03 ; 4.447973e-03 ; 6.190657e-03 ];
Tc_error_1  = [ 2.584961e+00 ; 2.189507e+00 ; 1.598602e+00 ];

%-- Image #2:
omc_2 = [ 1.623060e+00 ; -1.679361e+00 ; 1.019725e+00 ];
Tc_2  = [ 8.313515e+01 ; 4.343713e+01 ; 3.442507e+02 ];
omc_error_2 = [ 3.465634e-03 ; 5.465953e-03 ; 6.238227e-03 ];
Tc_error_2  = [ 1.964823e+00 ; 1.669725e+00 ; 1.223585e+00 ];

%-- Image #3:
omc_3 = [ 2.256750e+00 ; 1.232701e+00 ; -3.687331e-01 ];
Tc_3  = [ -1.828807e+02 ; -4.488676e+01 ; 8.341496e+02 ];
omc_error_3 = [ 4.581437e-03 ; 3.910966e-03 ; 7.761654e-03 ];
Tc_error_3  = [ 4.747355e+00 ; 4.064960e+00 ; 2.936928e+00 ];

%-- Image #4:
omc_4 = [ 1.993574e+00 ; 1.020074e+00 ; -4.854449e-01 ];
Tc_4  = [ -1.537022e+02 ; -4.144404e+01 ; 5.672441e+02 ];
omc_error_4 = [ 4.375863e-03 ; 4.132283e-03 ; 6.410786e-03 ];
Tc_error_4  = [ 3.231427e+00 ; 2.771154e+00 ; 1.972514e+00 ];

%-- Image #5:
omc_5 = [ 2.626321e+00 ; 5.981567e-01 ; -3.826267e-01 ];
Tc_5  = [ -1.182473e+02 ; 3.140594e+01 ; 6.054609e+02 ];
omc_error_5 = [ 5.281885e-03 ; 2.463747e-03 ; 7.693054e-03 ];
Tc_error_5  = [ 3.449638e+00 ; 2.929601e+00 ; 1.947261e+00 ];

%-- Image #6:
omc_6 = [ 1.820216e+00 ; 1.938475e+00 ; -4.742856e-01 ];
Tc_6  = [ -1.056548e+02 ; -8.409085e+01 ; 6.890904e+02 ];
omc_error_6 = [ 3.203894e-03 ; 4.709533e-03 ; 7.728700e-03 ];
Tc_error_6  = [ 3.918344e+00 ; 3.340021e+00 ; 2.359762e+00 ];

%-- Image #7:
omc_7 = [ 2.030991e+00 ; 2.080179e+00 ; -3.030909e-01 ];
Tc_7  = [ -9.187756e+01 ; -7.213293e+01 ; 8.259702e+02 ];
omc_error_7 = [ 4.624667e-03 ; 5.201083e-03 ; 1.040753e-02 ];
Tc_error_7  = [ 4.691699e+00 ; 3.989076e+00 ; 2.918797e+00 ];

%-- Image #8:
omc_8 = [ 1.107627e+00 ; 2.539906e+00 ; -6.946462e-01 ];
Tc_8  = [ 3.218983e+01 ; -1.039878e+02 ; 7.911998e+02 ];
omc_error_8 = [ 2.093655e-03 ; 5.596136e-03 ; 8.174281e-03 ];
Tc_error_8  = [ 4.496086e+00 ; 3.821002e+00 ; 2.584612e+00 ];

%-- Image #9:
omc_9 = [ 2.530369e+00 ; 1.624178e+00 ; -5.297858e-02 ];
Tc_9  = [ -9.388494e+01 ; -3.641526e+01 ; 7.888822e+02 ];
omc_error_9 = [ 7.595941e-03 ; 4.538690e-03 ; 1.390318e-02 ];
Tc_error_9  = [ 4.498164e+00 ; 3.806726e+00 ; 3.020241e+00 ];

%-- Image #10:
omc_10 = [ -1.660683e+00 ; -2.513348e+00 ; -1.667453e-02 ];
Tc_10  = [ -3.263120e+01 ; -8.489249e+01 ; 7.184089e+02 ];
omc_error_10 = [ 4.226140e-03 ; 6.835160e-03 ; 1.206570e-02 ];
Tc_error_10  = [ 4.077898e+00 ; 3.473343e+00 ; 2.588224e+00 ];

%-- Image #11:
omc_11 = [ -2.403645e+00 ; -1.879810e+00 ; -7.936931e-02 ];
Tc_11  = [ -1.462859e+02 ; -3.541495e+01 ; 6.908645e+02 ];
omc_error_11 = [ 5.913659e-03 ; 4.785016e-03 ; 1.201370e-02 ];
Tc_error_11  = [ 3.933273e+00 ; 3.360429e+00 ; 2.503838e+00 ];

%-- Image #12:
omc_12 = [ 9.594867e-01 ; 2.632039e+00 ; -5.192179e-01 ];
Tc_12  = [ -1.447499e+00 ; -9.678147e+01 ; 7.668487e+02 ];
omc_error_12 = [ 1.736999e-03 ; 5.675993e-03 ; 8.513212e-03 ];
Tc_error_12  = [ 4.352396e+00 ; 3.697045e+00 ; 2.538737e+00 ];

%-- Image #13:
omc_13 = [ 9.758246e-01 ; 2.631941e+00 ; -4.833385e-01 ];
Tc_13  = [ 5.425568e+00 ; -9.715342e+01 ; 7.623122e+02 ];
omc_error_13 = [ 1.793935e-03 ; 5.631257e-03 ; 8.630589e-03 ];
Tc_error_13  = [ 4.326172e+00 ; 3.674085e+00 ; 2.544766e+00 ];

%-- Image #14:
omc_14 = [ 1.392172e+00 ; 2.182809e+00 ; -3.739334e-01 ];
Tc_14  = [ -8.404335e+01 ; -9.149141e+01 ; 8.207010e+02 ];
omc_error_14 = [ 2.777936e-03 ; 5.093958e-03 ; 7.763570e-03 ];
Tc_error_14  = [ 4.665012e+00 ; 3.968991e+00 ; 2.796217e+00 ];

%-- Image #15:
omc_15 = [ 1.864649e+00 ; 2.085756e+00 ; -9.113811e-01 ];
Tc_15  = [ -2.336455e+00 ; -6.726370e+01 ; 8.092573e+02 ];
omc_error_15 = [ 3.234125e-03 ; 5.147827e-03 ; 8.087500e-03 ];
Tc_error_15  = [ 4.595155e+00 ; 3.900290e+00 ; 2.509934e+00 ];

%-- Image #16:
omc_16 = [ 8.103618e-01 ; 2.294951e+00 ; -1.364863e+00 ];
Tc_16  = [ 3.681618e+01 ; -5.356976e+01 ; 7.453842e+02 ];
omc_error_16 = [ 3.411759e-03 ; 5.873212e-03 ; 6.753540e-03 ];
Tc_error_16  = [ 4.236087e+00 ; 3.602839e+00 ; 2.128669e+00 ];

%-- Image #17:
omc_17 = [ -2.067400e+00 ; -1.283341e+00 ; 1.888696e-02 ];
Tc_17  = [ -7.781260e+01 ; -1.451285e+01 ; 6.179205e+02 ];
omc_error_17 = [ 4.406456e-03 ; 4.109644e-03 ; 6.974386e-03 ];
Tc_error_17  = [ 3.518293e+00 ; 2.967186e+00 ; 2.059167e+00 ];

%-- Image #18:
omc_18 = [ -1.518440e+00 ; -2.273348e+00 ; -1.088176e+00 ];
Tc_18  = [ -2.942442e+01 ; -4.814493e+01 ; 5.205600e+02 ];
omc_error_18 = [ 2.588977e-03 ; 5.707924e-03 ; 7.913393e-03 ];
Tc_error_18  = [ 2.949239e+00 ; 2.524799e+00 ; 2.085254e+00 ];

%-- Image #19:
omc_19 = [ 2.191003e+00 ; 4.206896e-01 ; -2.755436e-01 ];
Tc_19  = [ -1.184410e+02 ; 1.721451e+01 ; 4.193487e+02 ];
omc_error_19 = [ 4.871698e-03 ; 3.298413e-03 ; 6.279778e-03 ];
Tc_error_19  = [ 2.392149e+00 ; 2.038010e+00 ; 1.458863e+00 ];

%-- Image #20:
omc_20 = [ 2.097894e+00 ; 1.472482e+00 ; -5.136371e-01 ];
Tc_20  = [ -1.338385e+02 ; -4.570213e+01 ; 7.488828e+02 ];
omc_error_20 = [ 4.046079e-03 ; 4.200535e-03 ; 7.460158e-03 ];
Tc_error_20  = [ 4.258474e+00 ; 3.633325e+00 ; 2.523881e+00 ];

