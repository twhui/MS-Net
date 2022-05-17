% MS-Net (published in ECCV 2016)                                          
% Copyright (c) 2016 Tak-Wai Hui.  All rights reserved. 
%
% This software is licensed under the terms of the MS-Net licence
% which allows for non-commercial use only unless a prior arrangement
% has been made with the author (Tak-Wai Hui), the full terms of which 
% are made available in the LICENSE file.

clear all;
close all;
clc;
addpath('./matlab');
root = './examples/MSNet-release/';

%% CNN models
cnn = 'models/MSNet_x2';  up_scale = 2;   
% cnn = 'models/MSNet_x4';  up_scale = 4;  
% cnn = 'models/MSNet_x8';  up_scale = 8;  
% cnn = 'models/MSNet_x16'; up_scale = 16; 

%% Testing image
evaSet = 'A'; image_name = {'art', 'books', 'moebius'};
image_id = 1;

% evaSet = 'B'; image_name = {'art', 'books', 'dolls', 'laundry', 'moebius', 'reindeer'};
% image_id = 3;

% evaSet = 'C'; image_name = {'tsukuba', 'venus', 'teddy', 'cones'};
% image_id = 4;

%% Parameters settings
gpu_id = 7;
h = ones(3,3)/9;
hole_defect = false;  
margin = 8*up_scale;

%% Read ground truth depth map and RGB image
if strcmp(evaSet, 'A')
    imGtD0 = imread([root 'testing sets/A/Depth/' image_name{image_id} '.png']); 
    
elseif strcmp(evaSet, 'B')
    imGtD0 = imread([root 'testing sets/B/Depth/' image_name{image_id} '.bmp']);
    
    if strcmp(image_name{image_id}, 'dolls')
        hole_defect = true;
    end
   
elseif strcmp(evaSet, 'C')
    load([root 'testing sets/C/Depth/' image_name{image_id} '_2']);
    imGtD0 = img_double;
end

%% Main
im_GtD0 = modcrop(imGtD0, up_scale);
size_Dh = size(im_GtD0);
size_Dl = size_Dh/up_scale;

% D-channel
im_GtD = double(im_GtD0);
im_Dl = imresize(im_GtD,  1/up_scale, 'bicubic');
[im_Dl, min_D, max_D] = normalize_cleanIm(im_Dl);

im_Dl_LF = imfilter(im_Dl, h, 'symmetric');
in_D = im_Dl - im_Dl_LF;

% Run CNN
caffe.reset_all();
caffe.set_mode_gpu();
caffe.set_device(gpu_id);

net_model   = [root cnn '_deploy.prototxt'];
net_weights = [root cnn '.caffemodel'];

net = caffe.Net(net_model, net_weights, 'test');

blobs_input = {permute(in_D, [2 1 3])};

net.blobs('data-D').reshape([size(blobs_input{1},1) size(blobs_input{1},2) 1 1]);
net.reshape();

fprintf('Run CNN ... \n');
blobs_output = net.forward(blobs_input);
fprintf('Finished. \n');

im_Dh = permute(blobs_output{1}, [2 1 3]);
im_D_LF = imresize(im_Dl_LF, up_scale, 'bicubic');
im_Dh = im_Dh + im_D_LF(1:end-1, 1:end-1);
im_Dh = im_Dh*(max_D - min_D) + min_D;
   
%% Prepare ground truth
im_GtD = double(im_GtD0);

if hole_defect
    im_occ = im_GtD > 9;
else
    im_occ = true(size(im_GtD));
end

im_GtD = im_GtD(1:end-1, 1:end-1);
im_occ = im_occ(1:end-1, 1:end-1);

%% Convert to uint8 or uint16 
if max(max(im_GtD)) > 2^8-1
    im_Dh  = uint16(im_Dh);
    im_GtD = uint16(im_GtD);
else
    im_Dh  = uint8(im_Dh);
    im_GtD = uint8(im_GtD);
end

%% Compute RMSE
rmse_cnn = compute_RMSE(im_GtD, im_Dh, im_occ);

fprintf('------------------------------------------\n');
fprintf('Model: %s\n', cnn);
fprintf('Testing set %s: %s\n', evaSet, image_name{image_id});
fprintf('MS-Net %dx upsampling, RMSE = %.3f\n', up_scale, rmse_cnn);

