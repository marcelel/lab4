clc;
close all;
clearvars;

%%
Coins_png = imread('coins.png');
figure;
subplot(3,1,1); imshow(Coins_png);
subplot(3,1,2); imhist(Coins_png);
BW = im2bw(Coins_png, 85/255);
subplot(3,1,3); imshow(BW);

%%
Figura_png = imread('figura.png');
figure;
subplot(4,2,1); imshow(Figura_png);
subplot(4,2,2); imhist(Figura_png);
Figura2_png = imread('figura2.png');
subplot(4,2,3); imshow(Figura2_png);
subplot(4,2,4); imhist(Figura2_png);
Figura3_png = imread('figura3.png');
subplot(4,2,5); imshow(Figura3_png);
subplot(4,2,6); imhist(Figura3_png);
Figura4_png = imread('figura4.png');
subplot(4,2,7); imshow(Figura4_png);
subplot(4,2,8); imhist(Figura4_png);

%%
BW_graythresh = im2bw(Coins_png, graythresh(Coins_png));
BW_clusterKittler = im2bw(Coins_png, clusterKittler(Coins_png)/255);
BW_entropyYen = im2bw(Coins_png, entropyYen(Coins_png)/255);
figure(3);
subplot(2,3,1); imshow(Coins_png); title('Oryginalny');
subplot(2,3,2); imhist(Coins_png); title('Histogram');
subplot(2,3,3); imshow(BW); title(['Ręcznie, ', num2str(85/255)]);
subplot(2,3,4); imshow(BW_graythresh); title(['graythresh, ', num2str(graythresh(Coins_png))]);
subplot(2,3,5); imshow(BW_clusterKittler); title(['clusterKittler, ', num2str(clusterKittler(Coins_png)/255)]);
subplot(2,3,6); imshow(BW_entropyYen); title(['entropyYen, ', num2str(entropyYen(Coins_png)/255)]);

%%
Rice_png = imread('rice.png');
BW_rice = im2bw(Rice_png, 135/255);
BW_graythresh_rice = im2bw(Rice_png, graythresh(Rice_png));
BW_clusterKittler_rice = im2bw(Rice_png, clusterKittler(Rice_png)/255);
BW_entropyYen_rice = im2bw(Rice_png, entropyYen(Rice_png)/255);
figure(4);
subplot(2,3,1); imshow(Rice_png); title('Oryginalny');
subplot(2,3,2); imhist(Rice_png); title('Histogram');
subplot(2,3,3); imshow(BW_rice); title(['Ręcznie, ', num2str(135/255)]);
subplot(2,3,4); imshow(BW_graythresh_rice); title(['graythresh, ', num2str(graythresh(Rice_png))]);
subplot(2,3,5); imshow(BW_clusterKittler_rice); title(['clusterKittler, ', num2str(clusterKittler(Rice_png)/255)]);
subplot(2,3,6); imshow(BW_entropyYen_rice); title(['entropyYen, ', num2str(entropyYen(Rice_png)/255)]);