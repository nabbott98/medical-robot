% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1426.815858826751310 ; 1424.491543975659397 ];

%-- Principal point:
cc = [ 639.500000000000000 ; 359.500000000000000 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.139679900707122 ; -1.635708240113679 ; 0.011036977340737 ; 0.002899644729731 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 7.284482041151966 ; 8.162034455819894 ];

%-- Principal point uncertainty:
cc_error = [ 0.000000000000000 ; 0.000000000000000 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.029137075281437 ; 0.239125149205383 ; 0.001569887973120 ; 0.000979351228389 ; 0.000000000000000 ];

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
omc_1 = [ 1.996140e+00 ; -1.178728e+00 ; 6.219808e-01 ];
Tc_1  = [ 3.063150e+01 ; 6.486472e+01 ; 4.534432e+02 ];
omc_error_1 = [ 2.157159e-03 ; 1.394975e-03 ; 2.458132e-03 ];
Tc_error_1  = [ 1.534081e-01 ; 2.083565e-01 ; 2.774384e+00 ];

%-- Image #2:
omc_2 = [ 1.649951e+00 ; -1.701532e+00 ; 9.849966e-01 ];
Tc_2  = [ 8.661173e+01 ; 3.096776e+01 ; 3.448666e+02 ];
omc_error_2 = [ 1.456536e-03 ; 1.387166e-03 ; 1.835935e-03 ];
Tc_error_2  = [ 8.932986e-02 ; 1.303906e-01 ; 1.965162e+00 ];

%-- Image #3:
omc_3 = [ 2.288605e+00 ; 1.256647e+00 ; -3.542477e-01 ];
Tc_3  = [ -1.744171e+02 ; -7.564455e+01 ; 8.330119e+02 ];
omc_error_3 = [ 4.349944e-03 ; 2.582329e-03 ; 5.816246e-03 ];
Tc_error_3  = [ 1.753122e-01 ; 3.005364e-01 ; 4.270906e+00 ];

%-- Image #4:
omc_4 = [ 2.024950e+00 ; 1.043509e+00 ; -4.762021e-01 ];
Tc_4  = [ -1.480012e+02 ; -6.250710e+01 ; 5.662050e+02 ];
omc_error_4 = [ 2.074397e-03 ; 1.302091e-03 ; 2.367064e-03 ];
Tc_error_4  = [ 9.723880e-02 ; 2.064020e-01 ; 2.699695e+00 ];

%-- Image #5:
omc_5 = [ 2.663688e+00 ; 6.139308e-01 ; -3.896049e-01 ];
Tc_5  = [ -1.121175e+02 ; 9.405671e+00 ; 6.077076e+02 ];
omc_error_5 = [ 4.711588e-03 ; 1.496152e-03 ; 5.202343e-03 ];
Tc_error_5  = [ 1.016934e-01 ; 1.760399e-01 ; 3.024720e+00 ];

%-- Image #6:
omc_6 = [ 1.842477e+00 ; 1.966721e+00 ; -4.460816e-01 ];
Tc_6  = [ -9.866582e+01 ; -1.093538e+02 ; 6.858714e+02 ];
omc_error_6 = [ 3.069302e-03 ; 3.093749e-03 ; 5.792700e-03 ];
Tc_error_6  = [ 1.552949e-01 ; 2.758943e-01 ; 3.356778e+00 ];

%-- Image #7:
omc_7 = [ 2.054801e+00 ; 2.107936e+00 ; -2.694542e-01 ];
Tc_7  = [ -8.355882e+01 ; -1.022177e+02 ; 8.229416e+02 ];
omc_error_7 = [ 6.878373e-03 ; 6.715561e-03 ; 1.387439e-02 ];
Tc_error_7  = [ 1.835171e-01 ; 2.806926e-01 ; 4.421505e+00 ];

%-- Image #8:
omc_8 = [ 1.119951e+00 ; 2.571910e+00 ; -6.534811e-01 ];
Tc_8  = [ 4.003773e+01 ; -1.328742e+02 ; 7.865892e+02 ];
omc_error_8 = [ 2.220980e-03 ; 4.065425e-03 ; 6.793869e-03 ];
Tc_error_8  = [ 2.340040e-01 ; 3.404573e-01 ; 3.827444e+00 ];

%-- Image #9:
omc_9 = [ 2.562508e+00 ; 1.643559e+00 ; -2.109947e-02 ];
Tc_9  = [ -8.593165e+01 ; -6.499679e+01 ; 7.865136e+02 ];
omc_error_9 = [ 1.250838e-02 ; 7.489214e-03 ; 2.127854e-02 ];
Tc_error_9  = [ 1.534558e-01 ; 2.010549e-01 ; 4.895916e+00 ];

%-- Image #10:
omc_10 = [ -1.642986e+00 ; -2.489598e+00 ; -5.059398e-02 ];
Tc_10  = [ -2.545295e+01 ; -1.109141e+02 ; 7.150583e+02 ];
omc_error_10 = [ 5.804853e-03 ; 8.297006e-03 ; 1.758182e-02 ];
Tc_error_10  = [ 2.020175e-01 ; 2.107263e-01 ; 3.982529e+00 ];

%-- Image #11:
omc_11 = [ -2.373525e+00 ; -1.857287e+00 ; -9.897575e-02 ];
Tc_11  = [ -1.392144e+02 ; -6.061906e+01 ; 6.896832e+02 ];
omc_error_11 = [ 8.213245e-03 ; 5.808028e-03 ; 1.478608e-02 ];
Tc_error_11  = [ 1.631349e-01 ; 1.865074e-01 ; 3.725364e+00 ];

%-- Image #12:
omc_12 = [ 9.682703e-01 ; 2.656960e+00 ; -4.730806e-01 ];
Tc_12  = [ 6.257070e+00 ; -1.246423e+02 ; 7.622024e+02 ];
omc_error_12 = [ 2.172489e-03 ; 4.877044e-03 ; 8.683057e-03 ];
Tc_error_12  = [ 2.154030e-01 ; 3.049824e-01 ; 3.773069e+00 ];

%-- Image #13:
omc_13 = [ 9.853597e-01 ; 2.656562e+00 ; -4.370521e-01 ];
Tc_13  = [ 1.306621e+01 ; -1.248532e+02 ; 7.576427e+02 ];
omc_error_13 = [ 2.249551e-03 ; 4.952295e-03 ; 9.037302e-03 ];
Tc_error_13  = [ 2.152114e-01 ; 2.971294e-01 ; 3.786823e+00 ];

%-- Image #14:
omc_14 = [ 1.409649e+00 ; 2.206459e+00 ; -3.391947e-01 ];
Tc_14  = [ -7.564879e+01 ; -1.213567e+02 ; 8.163514e+02 ];
omc_error_14 = [ 2.863616e-03 ; 3.759595e-03 ; 7.056843e-03 ];
Tc_error_14  = [ 2.071906e-01 ; 3.001606e-01 ; 4.136154e+00 ];

%-- Image #15:
omc_15 = [ 1.885509e+00 ; 2.122909e+00 ; -8.929874e-01 ];
Tc_15  = [ 5.741902e+00 ; -9.659462e+01 ; 8.065565e+02 ];
omc_error_15 = [ 3.431874e-03 ; 3.489455e-03 ; 5.734657e-03 ];
Tc_error_15  = [ 2.324225e-01 ; 3.118209e-01 ; 3.849941e+00 ];

%-- Image #16:
omc_16 = [ 8.168786e-01 ; 2.334531e+00 ; -1.332154e+00 ];
Tc_16  = [ 4.425578e+01 ; -8.074364e+01 ; 7.427672e+02 ];
omc_error_16 = [ 1.593519e-03 ; 2.274141e-03 ; 2.876024e-03 ];
Tc_error_16  = [ 2.080138e-01 ; 2.637093e-01 ; 3.262629e+00 ];

%-- Image #17:
omc_17 = [ -2.035228e+00 ; -1.267499e+00 ; 5.720299e-03 ];
Tc_17  = [ -7.163572e+01 ; -3.683967e+01 ; 6.175582e+02 ];
omc_error_17 = [ 2.553170e-03 ; 1.731469e-03 ; 4.140620e-03 ];
Tc_error_17  = [ 1.351387e-01 ; 1.773334e-01 ; 3.189486e+00 ];

%-- Image #18:
omc_18 = [ -1.507362e+00 ; -2.235584e+00 ; -1.111752e+00 ];
Tc_18  = [ -2.421649e+01 ; -6.710696e+01 ; 5.189214e+02 ];
omc_error_18 = [ 1.997346e-03 ; 2.642942e-03 ; 3.435224e-03 ];
Tc_error_18  = [ 1.819958e-01 ; 2.317036e-01 ; 3.162506e+00 ];

%-- Image #19:
omc_19 = [ 2.226263e+00 ; 4.343036e-01 ; -2.829618e-01 ];
Tc_19  = [ -1.142336e+02 ; 1.936514e+00 ; 4.202820e+02 ];
omc_error_19 = [ 1.999503e-03 ; 9.933960e-04 ; 1.984826e-03 ];
Tc_error_19  = [ 7.206424e-02 ; 1.330554e-01 ; 2.134119e+00 ];

%-- Image #20:
omc_20 = [ 2.126937e+00 ; 1.499648e+00 ; -4.979212e-01 ];
Tc_20  = [ -1.262862e+02 ; -7.312380e+01 ; 7.478062e+02 ];
omc_error_20 = [ 3.561129e-03 ; 2.454507e-03 ; 4.872597e-03 ];
Tc_error_20  = [ 1.513588e-01 ; 2.673824e-01 ; 3.696692e+00 ];

%-- Image #21:
omc_21 = [ -2.111846e+00 ; -2.116316e+00 ; -4.387293e-01 ];
Tc_21  = [ -1.831705e+02 ; -1.457077e+02 ; 6.104168e+02 ];
omc_error_21 = [ 7.602656e-03 ; 5.653718e-03 ; 1.358420e-02 ];
Tc_error_21  = [ 3.540413e-01 ; 4.422402e-01 ; 3.714243e+00 ];

