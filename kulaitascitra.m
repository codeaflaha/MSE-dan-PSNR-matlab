% ===========================
% ALAT UKUR KUALITAS CITRA
%============================
clc;
clear all;
close all;
citrainput=[7 1 1; 2 3 4; 5 0 6]
citraoutput=[6 1 1; 4 3 4; 5 3 6]
[baris,kolom]= size(citrainput);
%pengukuran MSE dan PSNR
MSE=sum(sum((citrainput-citraoutput).^2))/(baris*kolom)
PSNR = 10*log10(max(citrainput(:).^2)/(MSE)) 