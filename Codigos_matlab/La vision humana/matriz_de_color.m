clc,clear all, close all;
 
R=[0:255];
color1=ones(256,256);
color2=ones(256,256);
color3=ones(256,256);
p1=ones(256,256,3);
p2=p1;
p3=p1;

for i=1:256
color1(i,:)=R(i);
color2(i,:)=R(257-i);
end
 
p1(:,:,1)=color1;
p1(:,:,2)=color1';
p1(:,:,3)=color3.*0;
 
p2(:,:,1)=color1;
p2(:,:,2)=color3.*255;
p2(:,:,3)=color1';
 
p3(:,:,1)=color1;
p3(:,:,2)=color2';
p3(:,:,3)=color3.*255;
 
p4=[p1 p2 p3];
 
p1=uint8(p1);
p2=uint8(p2);
p3=uint8(p3);
p4=uint8 (p4);
 
figure(1);
subplot(1,3,1)
image(p1)
subplot(1,3,2);
image(p2)
subplot(1,3,3);
image(p3);
figure(2)
image(p4);

