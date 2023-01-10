% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1413.024780441304983 ; 1413.598859941673254 ];

%-- Principal point:
cc = [ 639.500000000000000 ; 359.500000000000000 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.059101086999943 ; 0.100019957580956 ; 0.005674530950363 ; 0.000773590141830 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 4.610523493785290 ; 5.131036244065301 ];

%-- Principal point uncertainty:
cc_error = [ 0.000000000000000 ; 0.000000000000000 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.027285781710440 ; 0.320417880600759 ; 0.001092114271833 ; 0.000663900797929 ; 0.000000000000000 ];

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
omc_1 = [ 1.994849e+00 ; -1.177782e+00 ; 6.224370e-01 ];
Tc_1  = [ 3.065727e+01 ; 6.477093e+01 ; 4.477837e+02 ];
omc_error_1 = [ 1.384440e-03 ; 8.934461e-04 ; 1.550560e-03 ];
Tc_error_1  = [ 9.656636e-02 ; 1.330499e-01 ; 1.749929e+00 ];

%-- Image #2:
omc_2 = [ 1.648760e+00 ; -1.700384e+00 ; 9.848227e-01 ];
Tc_2  = [ 8.663550e+01 ; 3.091673e+01 ; 3.410375e+02 ];
omc_error_2 = [ 9.397606e-04 ; 8.980547e-04 ; 1.167037e-03 ];
Tc_error_2  = [ 5.623966e-02 ; 8.222358e-02 ; 1.236534e+00 ];

%-- Image #3:
omc_3 = [ 2.287071e+00 ; 1.255286e+00 ; -3.587787e-01 ];
Tc_3  = [ -1.743960e+02 ; -7.532655e+01 ; 8.260781e+02 ];
omc_error_3 = [ 2.777977e-03 ; 1.659879e-03 ; 3.663549e-03 ];
Tc_error_3  = [ 1.106997e-01 ; 1.942326e-01 ; 2.679200e+00 ];

%-- Image #4:
omc_4 = [ 2.024687e+00 ; 1.042795e+00 ; -4.791445e-01 ];
Tc_4  = [ -1.479362e+02 ; -6.220886e+01 ; 5.619980e+02 ];
omc_error_4 = [ 1.337938e-03 ; 8.407265e-04 ; 1.501180e-03 ];
Tc_error_4  = [ 6.175037e-02 ; 1.345826e-01 ; 1.692826e+00 ];

%-- Image #5:
omc_5 = [ 2.659483e+00 ; 6.132345e-01 ; -3.874152e-01 ];
Tc_5  = [ -1.121219e+02 ; 9.429653e+00 ; 6.015323e+02 ];
omc_error_5 = [ 3.039072e-03 ; 9.499838e-04 ; 3.259894e-03 ];
Tc_error_5  = [ 6.420978e-02 ; 1.105988e-01 ; 1.907819e+00 ];

%-- Image #6:
omc_6 = [ 1.841711e+00 ; 1.965375e+00 ; -4.510649e-01 ];
Tc_6  = [ -9.863317e+01 ; -1.090475e+02 ; 6.802439e+02 ];
omc_error_6 = [ 1.951679e-03 ; 1.985482e-03 ; 3.710658e-03 ];
Tc_error_6  = [ 9.802246e-02 ; 1.816651e-01 ; 2.102067e+00 ];

%-- Image #7:
omc_7 = [ 2.051174e+00 ; 2.103993e+00 ; -2.786462e-01 ];
Tc_7  = [ -8.352552e+01 ; -1.019363e+02 ; 8.155688e+02 ];
omc_error_7 = [ 4.295973e-03 ; 4.204815e-03 ; 8.593142e-03 ];
Tc_error_7  = [ 1.159350e-01 ; 1.820946e-01 ; 2.764266e+00 ];

%-- Image #8:
omc_8 = [ 1.118764e+00 ; 2.569791e+00 ; -6.591391e-01 ];
Tc_8  = [ 4.010407e+01 ; -1.325019e+02 ; 7.795901e+02 ];
omc_error_8 = [ 1.405383e-03 ; 2.580279e-03 ; 4.324045e-03 ];
Tc_error_8  = [ 1.475519e-01 ; 2.222459e-01 ; 2.400206e+00 ];

%-- Image #9:
omc_9 = [ 2.554879e+00 ; 1.638982e+00 ; -4.111860e-02 ];
Tc_9  = [ -8.592325e+01 ; -6.489672e+01 ; 7.802226e+02 ];
omc_error_9 = [ 7.709544e-03 ; 4.598863e-03 ; 1.308132e-02 ];
Tc_error_9  = [ 9.264675e-02 ; 1.260035e-01 ; 3.019244e+00 ];

%-- Image #10:
omc_10 = [ -1.644829e+00 ; -2.492669e+00 ; -4.943076e-02 ];
Tc_10  = [ -2.537033e+01 ; -1.108530e+02 ; 7.085832e+02 ];
omc_error_10 = [ 3.691344e-03 ; 5.295504e-03 ; 1.122702e-02 ];
Tc_error_10  = [ 1.272716e-01 ; 1.324102e-01 ; 2.497211e+00 ];

%-- Image #11:
omc_11 = [ -2.377799e+00 ; -1.860228e+00 ; -9.417357e-02 ];
Tc_11  = [ -1.392442e+02 ; -6.055145e+01 ; 6.841218e+02 ];
omc_error_11 = [ 5.218681e-03 ; 3.696965e-03 ; 9.539032e-03 ];
Tc_error_11  = [ 1.026724e-01 ; 1.172095e-01 ; 2.336641e+00 ];

%-- Image #12:
omc_12 = [ 9.687318e-01 ; 2.657543e+00 ; -4.796980e-01 ];
Tc_12  = [ 6.318905e+00 ; -1.244059e+02 ; 7.558717e+02 ];
omc_error_12 = [ 1.360634e-03 ; 3.066739e-03 ; 5.597508e-03 ];
Tc_error_12  = [ 1.357090e-01 ; 1.993687e-01 ; 2.362527e+00 ];

%-- Image #13:
omc_13 = [ 9.856809e-01 ; 2.656893e+00 ; -4.442838e-01 ];
Tc_13  = [ 1.312655e+01 ; -1.246006e+02 ; 7.512546e+02 ];
omc_error_13 = [ 1.407547e-03 ; 3.108894e-03 ; 5.816959e-03 ];
Tc_error_13  = [ 1.355533e-01 ; 1.943162e-01 ; 2.370506e+00 ];

%-- Image #14:
omc_14 = [ 1.410404e+00 ; 2.206963e+00 ; -3.430891e-01 ];
Tc_14  = [ -7.566964e+01 ; -1.211635e+02 ; 8.099124e+02 ];
omc_error_14 = [ 1.798751e-03 ; 2.370573e-03 ; 4.565335e-03 ];
Tc_error_14  = [ 1.309834e-01 ; 1.952710e-01 ; 2.586738e+00 ];

%-- Image #15:
omc_15 = [ 1.882239e+00 ; 2.120295e+00 ; -8.917430e-01 ];
Tc_15  = [ 5.732497e+00 ; -9.639783e+01 ; 7.991859e+02 ];
omc_error_15 = [ 2.208442e-03 ; 2.230105e-03 ; 3.592012e-03 ];
Tc_error_15  = [ 1.460897e-01 ; 1.987254e-01 ; 2.416779e+00 ];

%-- Image #16:
omc_16 = [ 8.163784e-01 ; 2.333630e+00 ; -1.333777e+00 ];
Tc_16  = [ 4.433376e+01 ; -8.053979e+01 ; 7.364599e+02 ];
omc_error_16 = [ 1.004759e-03 ; 1.447989e-03 ; 1.823838e-03 ];
Tc_error_16  = [ 1.310668e-01 ; 1.703939e-01 ; 2.051399e+00 ];

%-- Image #17:
omc_17 = [ -2.035147e+00 ; -1.266571e+00 ; 5.977896e-03 ];
Tc_17  = [ -7.159895e+01 ; -3.668487e+01 ; 6.115479e+02 ];
omc_error_17 = [ 1.615152e-03 ; 1.103356e-03 ; 2.613558e-03 ];
Tc_error_17  = [ 8.518880e-02 ; 1.124786e-01 ; 2.003928e+00 ];

%-- Image #18:
omc_18 = [ -1.506667e+00 ; -2.235100e+00 ; -1.112086e+00 ];
Tc_18  = [ -2.418353e+01 ; -6.696311e+01 ; 5.127781e+02 ];
omc_error_18 = [ 1.272283e-03 ; 1.677693e-03 ; 2.173411e-03 ];
Tc_error_18  = [ 1.144604e-01 ; 1.484620e-01 ; 1.991847e+00 ];

%-- Image #19:
omc_19 = [ 2.225710e+00 ; 4.340610e-01 ; -2.809463e-01 ];
Tc_19  = [ -1.141880e+02 ; 1.928545e+00 ; 4.168209e+02 ];
omc_error_19 = [ 1.305702e-03 ; 6.278835e-04 ; 1.264941e-03 ];
Tc_error_19  = [ 4.591615e-02 ; 8.352802e-02 ; 1.340837e+00 ];

%-- Image #20:
omc_20 = [ 2.125032e+00 ; 1.498068e+00 ; -5.006916e-01 ];
Tc_20  = [ -1.262466e+02 ; -7.288057e+01 ; 7.410361e+02 ];
omc_error_20 = [ 2.275809e-03 ; 1.576390e-03 ; 3.068793e-03 ];
Tc_error_20  = [ 9.534453e-02 ; 1.720032e-01 ; 2.322988e+00 ];

