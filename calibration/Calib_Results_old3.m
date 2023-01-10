% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1413.023554807661867 ; 1411.554562882035498 ];

%-- Principal point:
cc = [ 639.500000000000000 ; 359.500000000000000 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.049390543278794 ; 0.151034235058766 ; 0.006182572831805 ; 0.000761060326361 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 4.972943492586407 ; 5.433636780833997 ];

%-- Principal point uncertainty:
cc_error = [ 0.000000000000000 ; 0.000000000000000 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.028188235224210 ; 0.318514605407588 ; 0.001092240583552 ; 0.000693854399339 ; 0.000000000000000 ];

%-- Image size:
nx = 1280;
ny = 720;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 21;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 0;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 1.995802e+00 ; -1.178338e+00 ; 6.219206e-01 ];
Tc_1  = [ 3.065544e+01 ; 6.485609e+01 ; 4.477423e+02 ];
omc_error_1 = [ 1.406771e-03 ; 9.191054e-04 ; 1.663701e-03 ];
Tc_error_1  = [ 1.048237e-01 ; 1.367896e-01 ; 1.888980e+00 ];

%-- Image #2:
omc_2 = [ 1.649553e+00 ; -1.701147e+00 ; 9.842904e-01 ];
Tc_2  = [ 8.663621e+01 ; 3.095727e+01 ; 3.409634e+02 ];
omc_error_2 = [ 9.230489e-04 ; 8.799537e-04 ; 1.232926e-03 ];
Tc_error_2  = [ 6.097145e-02 ; 8.676881e-02 ; 1.335114e+00 ];

%-- Image #3:
omc_3 = [ 2.288764e+00 ; 1.256326e+00 ; -3.573133e-01 ];
Tc_3  = [ -1.743929e+02 ; -7.544995e+01 ; 8.257602e+02 ];
omc_error_3 = [ 2.871225e-03 ; 1.707944e-03 ; 3.911476e-03 ];
Tc_error_3  = [ 1.200795e-01 ; 1.989955e-01 ; 2.894279e+00 ];

%-- Image #4:
omc_4 = [ 2.025615e+00 ; 1.043321e+00 ; -4.784156e-01 ];
Tc_4  = [ -1.479384e+02 ; -6.231616e+01 ; 5.617780e+02 ];
omc_error_4 = [ 1.357087e-03 ; 8.625373e-04 ; 1.579887e-03 ];
Tc_error_4  = [ 6.677252e-02 ; 1.329884e-01 ; 1.828449e+00 ];

%-- Image #5:
omc_5 = [ 2.662006e+00 ; 6.137442e-01 ; -3.883107e-01 ];
Tc_5  = [ -1.121042e+02 ; 9.438304e+00 ; 6.014413e+02 ];
omc_error_5 = [ 2.992439e-03 ; 9.938982e-04 ; 3.519538e-03 ];
Tc_error_5  = [ 6.913875e-02 ; 1.200678e-01 ; 2.059185e+00 ];

%-- Image #6:
omc_6 = [ 1.842826e+00 ; 1.966696e+00 ; -4.484893e-01 ];
Tc_6  = [ -9.862376e+01 ; -1.091979e+02 ; 6.798003e+02 ];
omc_error_6 = [ 2.035652e-03 ; 2.034647e-03 ; 3.780591e-03 ];
Tc_error_6  = [ 1.061773e-01 ; 1.773044e-01 ; 2.265075e+00 ];

%-- Image #7:
omc_7 = [ 2.053497e+00 ; 2.106437e+00 ; -2.744096e-01 ];
Tc_7  = [ -8.351952e+01 ; -1.020419e+02 ; 8.148589e+02 ];
omc_error_7 = [ 4.532444e-03 ; 4.408732e-03 ; 9.150577e-03 ];
Tc_error_7  = [ 1.255993e-01 ; 1.869288e-01 ; 2.972160e+00 ];

%-- Image #8:
omc_8 = [ 1.119403e+00 ; 2.571142e+00 ; -6.561368e-01 ];
Tc_8  = [ 4.010347e+01 ; -1.326876e+02 ; 7.791557e+02 ];
omc_error_8 = [ 1.489763e-03 ; 2.711543e-03 ; 4.403608e-03 ];
Tc_error_8  = [ 1.599980e-01 ; 2.175366e-01 ; 2.587626e+00 ];

%-- Image #9:
omc_9 = [ 2.556845e+00 ; 1.640298e+00 ; -3.508050e-02 ];
Tc_9  = [ -8.592021e+01 ; -6.491681e+01 ; 7.790718e+02 ];
omc_error_9 = [ 8.320033e-03 ; 4.958329e-03 ; 1.384869e-02 ];
Tc_error_9  = [ 1.017153e-01 ; 1.363491e-01 ; 3.226667e+00 ];

%-- Image #10:
omc_10 = [ -1.644318e+00 ; -2.491698e+00 ; -4.282450e-02 ];
Tc_10  = [ -2.538397e+01 ; -1.109092e+02 ; 7.083936e+02 ];
omc_error_10 = [ 3.997966e-03 ; 5.715546e-03 ; 1.173514e-02 ];
Tc_error_10  = [ 1.375601e-01 ; 1.381053e-01 ; 2.700981e+00 ];

%-- Image #11:
omc_11 = [ -2.378782e+00 ; -1.860898e+00 ; -8.974992e-02 ];
Tc_11  = [ -1.392331e+02 ; -6.059653e+01 ; 6.839147e+02 ];
omc_error_11 = [ 5.661765e-03 ; 4.012948e-03 ; 1.011393e-02 ];
Tc_error_11  = [ 1.105252e-01 ; 1.235681e-01 ; 2.525600e+00 ];

%-- Image #12:
omc_12 = [ 9.689193e-01 ; 2.658283e+00 ; -4.753729e-01 ];
Tc_12  = [ 6.326486e+00 ; -1.245584e+02 ; 7.553257e+02 ];
omc_error_12 = [ 1.479479e-03 ; 3.315920e-03 ; 5.614007e-03 ];
Tc_error_12  = [ 1.471195e-01 ; 1.978688e-01 ; 2.543147e+00 ];

%-- Image #13:
omc_13 = [ 9.858692e-01 ; 2.657560e+00 ; -4.397551e-01 ];
Tc_13  = [ 1.313287e+01 ; -1.247493e+02 ; 7.506799e+02 ];
omc_error_13 = [ 1.531357e-03 ; 3.368168e-03 ; 5.828010e-03 ];
Tc_error_13  = [ 1.469713e-01 ; 1.928231e-01 ; 2.550289e+00 ];

%-- Image #14:
omc_14 = [ 1.410494e+00 ; 2.207362e+00 ; -3.398028e-01 ];
Tc_14  = [ -7.563354e+01 ; -1.212984e+02 ; 8.092452e+02 ];
omc_error_14 = [ 1.957630e-03 ; 2.568555e-03 ; 4.616795e-03 ];
Tc_error_14  = [ 1.408731e-01 ; 1.969780e-01 ; 2.781667e+00 ];

%-- Image #15:
omc_15 = [ 1.883807e+00 ; 2.121792e+00 ; -8.914021e-01 ];
Tc_15  = [ 5.725927e+00 ; -9.650613e+01 ; 7.987127e+02 ];
omc_error_15 = [ 2.231501e-03 ; 2.274116e-03 ; 3.907321e-03 ];
Tc_error_15  = [ 1.585557e-01 ; 2.066846e-01 ; 2.604299e+00 ];

%-- Image #16:
omc_16 = [ 8.166445e-01 ; 2.334328e+00 ; -1.332934e+00 ];
Tc_16  = [ 4.433487e+01 ; -8.065687e+01 ; 7.362680e+02 ];
omc_error_16 = [ 1.081783e-03 ; 1.522088e-03 ; 1.922812e-03 ];
Tc_error_16  = [ 1.421794e-01 ; 1.724594e-01 ; 2.215330e+00 ];

%-- Image #17:
omc_17 = [ -2.035711e+00 ; -1.267092e+00 ; 7.658009e-03 ];
Tc_17  = [ -7.157751e+01 ; -3.672902e+01 ; 6.113778e+02 ];
omc_error_17 = [ 1.721154e-03 ; 1.156187e-03 ; 2.714700e-03 ];
Tc_error_17  = [ 9.203555e-02 ; 1.195734e-01 ; 2.162571e+00 ];

%-- Image #18:
omc_18 = [ -1.507525e+00 ; -2.236164e+00 ; -1.111438e+00 ];
Tc_18  = [ -2.417800e+01 ; -6.705174e+01 ; 5.126736e+02 ];
omc_error_18 = [ 1.306391e-03 ; 1.735709e-03 ; 2.332896e-03 ];
Tc_error_18  = [ 1.242660e-01 ; 1.533615e-01 ; 2.150826e+00 ];

%-- Image #19:
omc_19 = [ 2.226837e+00 ; 4.342484e-01 ; -2.810005e-01 ];
Tc_19  = [ -1.141878e+02 ; 1.928810e+00 ; 4.166918e+02 ];
omc_error_19 = [ 1.268201e-03 ; 6.739802e-04 ; 1.364670e-03 ];
Tc_error_19  = [ 4.956770e-02 ; 9.074054e-02 ; 1.447165e+00 ];

%-- Image #20:
omc_20 = [ 2.126544e+00 ; 1.499176e+00 ; -4.994154e-01 ];
Tc_20  = [ -1.262458e+02 ; -7.299022e+01 ; 7.407810e+02 ];
omc_error_20 = [ 2.334213e-03 ; 1.603388e-03 ; 3.270003e-03 ];
Tc_error_20  = [ 1.034471e-01 ; 1.762731e-01 ; 2.508138e+00 ];

%-- Image #21:
omc_21 = [ -2.167539e+00 ; -2.134549e+00 ; -1.371781e-01 ];
Tc_21  = [ -7.483601e+01 ; -1.037461e+02 ; 4.391637e+02 ];
omc_error_21 = [ 3.107211e-03 ; 2.950016e-03 ; 6.419222e-03 ];
Tc_error_21  = [ 7.628793e-02 ; 1.044647e-01 ; 1.504562e+00 ];

