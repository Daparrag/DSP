clc,clear all; close all;
%%
im1=imread('im1619.png');
im2=uint8(255./95.*(double(im1)-9));
x=0:255;
im1hist=hist(im1(:),x);
J=histeq(im1,256);
imJhist=hist(J(:),x);
J=J>=13;
%figure(1),subplot(2,1,1),stem(im1hist,'marker','none'),subplot(2,1,2),stem(imJhist,'marker','none');
figure(2),subplot(1,2,1),imshow(J),xlabel('(a) imagen 1')%,subplot(1,2,2),imshow(J);
%%
im1=imread('im1621.png');
im2=uint8(255./(max(double(im1(:)))-(double(min(im1(:))))).*(double(im1)-(min(double(im1(:))))));
x=0:255;
im1hist=hist(im2(:),x);
imead=uint8(mean(double(im2(:))));
im3=im2>=70;
figure(2),imshow(im3);
%figure(1),subplot(4,1,4),stem(im1hist,'marker','none'),xlabel('(d) expanción del histograma imagen 4')