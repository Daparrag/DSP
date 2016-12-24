clc, clear all, close all;
im1=rgb2gray(imread('mario.jpg'));
%imshow(im1);
% Construccion de la rejilla
x=linspace(1,320,4);
y=linspace(1,240,4);
im2=zeros(size(im1));

for k=1:60:240
    im2(k,:)=255;
    im2(240,:)=255;
end
for j=1:80:320
im2(:,j)=255;
im2(:,320)=255;
end
im3=uint8(im2)+im1;

figure(1),imshow(im3);
hold on;
[X,Y]=ginput(2);
XI=[X(1) X(2) X(1) X(2)];
YI=[Y(1) Y(1) Y(2) Y(2)];
plot(XI,YI,'r*')
[K,P] = Evalcel(X,Y);
imf=escala(im3,X,Y);
figure(2), imshow(imf),hold on,plot(XI,YI,'r*');





  

    
