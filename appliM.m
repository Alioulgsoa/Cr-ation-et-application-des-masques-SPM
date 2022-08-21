%programme pour applique les masque spm sur les images

clc;
close all;
clear all;


%l'images initiale
img = double(niftiread('t1_001c.nii'));

% lire les carte de probabilite C4 ,C5, C6 de SPM
H = niftiread('c4t1_001c.nii');
G = niftiread('c5t1_001c.nii');
K = niftiread('c6t1_001c.nii');


%creation des masques SPM
H = double(imcomplement(imbinarize(H,0.5)));
G = double(imcomplement(imbinarize(G,0.5)));
K = double(imcomplement(imbinarize(K,0.5)));


% creation image 3D vide
img_m= zeros(size(img));

%application des masque
img_m= img.*H;
img= img_m;
img_m= img.*G;
img = img_m;
img_m= img.*K;

% creation de l'image sortie 

niftiwrite(img_m,'t1_001c_mask.nii');

