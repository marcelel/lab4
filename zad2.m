clc;
close all;
clearvars;

%%
Rice_png = imread('rice.png');
[X Y] = size(Rice_png);
Rice_pngBW = Rice_png;

for i = 1:X
    for j = 1:Y
        mean(i,j,15/2,Rice_png,256,256);
    end
end