% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1426.071422674858240 ; 1425.229846096733581 ];

%-- Principal point:
cc = [ 651.278668382376964 ; 310.309020489833017 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.043753014634420 ; 0.192958078557561 ; -0.005937576003768 ; 0.004023305260414 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 4.690245353933443 ; 4.900499584550755 ];

%-- Principal point uncertainty:
cc_error = [ 8.068684370117156 ; 7.144768370253943 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.026427165489665 ; 0.314139378822617 ; 0.001935122017074 ; 0.002338127806399 ; 0.000000000000000 ];

%-- Image size:
nx = 1280;
ny = 720;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 21;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 1.965709e+00 ; -1.164532e+00 ; 6.470359e-01 ];
Tc_1  = [ 2.689998e+01 ; 8.047913e+01 ; 4.503021e+02 ];
omc_error_1 = [ 4.335871e-03 ; 4.473816e-03 ; 6.247319e-03 ];
Tc_error_1  = [ 2.569100e+00 ; 2.277807e+00 ; 1.662944e+00 ];

%-- Image #2:
omc_2 = [ 1.624918e+00 ; -1.679709e+00 ; 1.016673e+00 ];
Tc_2  = [ 8.377641e+01 ; 4.288751e+01 ; 3.437564e+02 ];
omc_error_2 = [ 3.554003e-03 ; 5.519722e-03 ; 6.325200e-03 ];
Tc_error_2  = [ 1.952075e+00 ; 1.736534e+00 ; 1.264958e+00 ];

%-- Image #3:
omc_3 = [ 2.258982e+00 ; 1.234872e+00 ; -3.693100e-01 ];
Tc_3  = [ -1.813357e+02 ; -4.632402e+01 ; 8.335449e+02 ];
omc_error_3 = [ 4.711758e-03 ; 3.967601e-03 ; 7.834473e-03 ];
Tc_error_3  = [ 4.722737e+00 ; 4.219705e+00 ; 3.012696e+00 ];

%-- Image #4:
omc_4 = [ 1.995269e+00 ; 1.022162e+00 ; -4.862765e-01 ];
Tc_4  = [ -1.526528e+02 ; -4.243539e+01 ; 5.668767e+02 ];
omc_error_4 = [ 4.515836e-03 ; 4.175808e-03 ; 6.415588e-03 ];
Tc_error_4  = [ 3.214351e+00 ; 2.876064e+00 ; 2.017865e+00 ];

%-- Image #5:
omc_5 = [ 2.628792e+00 ; 5.994840e-01 ; -3.848348e-01 ];
Tc_5  = [ -1.171204e+02 ; 3.041047e+01 ; 6.050968e+02 ];
omc_error_5 = [ 5.349022e-03 ; 2.505046e-03 ; 7.760851e-03 ];
Tc_error_5  = [ 3.431087e+00 ; 3.044768e+00 ; 2.009654e+00 ];

%-- Image #6:
omc_6 = [ 1.821809e+00 ; 1.941142e+00 ; -4.735075e-01 ];
Tc_6  = [ -1.043739e+02 ; -8.529260e+01 ; 6.883334e+02 ];
omc_error_6 = [ 3.307456e-03 ; 4.779109e-03 ; 7.779124e-03 ];
Tc_error_6  = [ 3.896610e+00 ; 3.464535e+00 ; 2.409481e+00 ];

%-- Image #7:
omc_7 = [ 2.033155e+00 ; 2.082960e+00 ; -3.015109e-01 ];
Tc_7  = [ -9.034851e+01 ; -7.354082e+01 ; 8.248918e+02 ];
omc_error_7 = [ 4.784403e-03 ; 5.327292e-03 ; 1.065962e-02 ];
Tc_error_7  = [ 4.664521e+00 ; 4.139113e+00 ; 2.964574e+00 ];

%-- Image #8:
omc_8 = [ 1.108221e+00 ; 2.542829e+00 ; -6.928048e-01 ];
Tc_8  = [ 3.364471e+01 ; -1.053602e+02 ; 7.900833e+02 ];
omc_error_8 = [ 2.165564e-03 ; 5.704960e-03 ; 8.243841e-03 ];
Tc_error_8  = [ 4.469606e+00 ; 3.963591e+00 ; 2.658548e+00 ];

%-- Image #9:
omc_9 = [ 2.532114e+00 ; 1.625472e+00 ; -5.178252e-02 ];
Tc_9  = [ -9.242090e+01 ; -3.773364e+01 ; 7.876768e+02 ];
omc_error_9 = [ 8.024315e-03 ; 4.773941e-03 ; 1.420948e-02 ];
Tc_error_9  = [ 4.470533e+00 ; 3.951482e+00 ; 3.025323e+00 ];

%-- Image #10:
omc_10 = [ -1.659233e+00 ; -2.510842e+00 ; -1.351830e-02 ];
Tc_10  = [ -3.131121e+01 ; -8.609872e+01 ; 7.175999e+02 ];
omc_error_10 = [ 4.371071e-03 ; 6.984134e-03 ; 1.232698e-02 ];
Tc_error_10  = [ 4.055037e+00 ; 3.607324e+00 ; 2.691107e+00 ];

%-- Image #11:
omc_11 = [ -2.402848e+00 ; -1.878830e+00 ; -7.551583e-02 ];
Tc_11  = [ -1.450050e+02 ; -3.657501e+01 ; 6.904134e+02 ];
omc_error_11 = [ 6.140033e-03 ; 4.914861e-03 ; 1.221780e-02 ];
Tc_error_11  = [ 3.913182e+00 ; 3.490653e+00 ; 2.582642e+00 ];

%-- Image #12:
omc_12 = [ 9.599572e-01 ; 2.634674e+00 ; -5.163944e-01 ];
Tc_12  = [ -2.769395e-02 ; -9.810931e+01 ; 7.657749e+02 ];
omc_error_12 = [ 1.826973e-03 ; 5.799424e-03 ; 8.570767e-03 ];
Tc_error_12  = [ 4.327135e+00 ; 3.835483e+00 ; 2.596775e+00 ];

%-- Image #13:
omc_13 = [ 9.763372e-01 ; 2.634484e+00 ; -4.804711e-01 ];
Tc_13  = [ 6.835299e+00 ; -9.847047e+01 ; 7.612093e+02 ];
omc_error_13 = [ 1.890959e-03 ; 5.760815e-03 ; 8.674345e-03 ];
Tc_error_13  = [ 4.300756e+00 ; 3.811683e+00 ; 2.599807e+00 ];

%-- Image #14:
omc_14 = [ 1.393179e+00 ; 2.185162e+00 ; -3.721203e-01 ];
Tc_14  = [ -8.250742e+01 ; -9.290893e+01 ; 8.196655e+02 ];
omc_error_14 = [ 2.923351e-03 ; 5.193853e-03 ; 7.818673e-03 ];
Tc_error_14  = [ 4.638695e+00 ; 4.118280e+00 ; 2.848048e+00 ];

%-- Image #15:
omc_15 = [ 1.865944e+00 ; 2.088655e+00 ; -9.116275e-01 ];
Tc_15  = [ -8.558092e-01 ; -6.863997e+01 ; 8.082410e+02 ];
omc_error_15 = [ 3.276082e-03 ; 5.263272e-03 ; 8.214068e-03 ];
Tc_error_15  = [ 4.569346e+00 ; 4.048065e+00 ; 2.580970e+00 ];

%-- Image #16:
omc_16 = [ 8.100264e-01 ; 2.298015e+00 ; -1.364070e+00 ];
Tc_16  = [ 3.819213e+01 ; -5.484479e+01 ; 7.445429e+02 ];
omc_error_16 = [ 3.425951e-03 ; 6.003716e-03 ; 6.870875e-03 ];
Tc_error_16  = [ 4.211862e+00 ; 3.740677e+00 ; 2.206049e+00 ];

%-- Image #17:
omc_17 = [ -2.065706e+00 ; -1.281779e+00 ; 2.071804e-02 ];
Tc_17  = [ -7.665772e+01 ; -1.554169e+01 ; 6.172830e+02 ];
omc_error_17 = [ 4.569708e-03 ; 4.108975e-03 ; 7.015227e-03 ];
Tc_error_17  = [ 3.498000e+00 ; 3.081008e+00 ; 2.125582e+00 ];

%-- Image #18:
omc_18 = [ -1.518648e+00 ; -2.271230e+00 ; -1.087446e+00 ];
Tc_18  = [ -2.846374e+01 ; -4.904457e+01 ; 5.199181e+02 ];
omc_error_18 = [ 2.655296e-03 ; 5.839925e-03 ; 8.014754e-03 ];
Tc_error_18  = [ 2.933039e+00 ; 2.619737e+00 ; 2.162584e+00 ];

%-- Image #19:
omc_19 = [ 2.192895e+00 ; 4.221580e-01 ; -2.773046e-01 ];
Tc_19  = [ -1.176627e+02 ; 1.651654e+01 ; 4.190984e+02 ];
omc_error_19 = [ 5.015144e-03 ; 3.305262e-03 ; 6.274625e-03 ];
Tc_error_19  = [ 2.378895e+00 ; 2.117383e+00 ; 1.495064e+00 ];

%-- Image #20:
omc_20 = [ 2.099818e+00 ; 1.474856e+00 ; -5.140010e-01 ];
Tc_20  = [ -1.324536e+02 ; -4.698649e+01 ; 7.482587e+02 ];
omc_error_20 = [ 4.157143e-03 ; 4.265760e-03 ; 7.519640e-03 ];
Tc_error_20  = [ 4.235620e+00 ; 3.771367e+00 ; 2.591513e+00 ];

%-- Image #21:
omc_21 = [ 2.180580e+00 ; 2.202121e+00 ; -1.678476e-01 ];
Tc_21  = [ -6.413277e+01 ; -8.919189e+01 ; 5.790965e+02 ];
omc_error_21 = [ 4.639619e-03 ; 4.721308e-03 ; 1.044429e-02 ];
Tc_error_21  = [ 3.282705e+00 ; 2.896692e+00 ; 2.125456e+00 ];

