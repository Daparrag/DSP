clc, clear all, close all;
im1=imread('ImagenSinteticaWatershed.png');
figure(1),imshow(im1)
figure(2);
im2=im1>0;
for k=2:255
    im2=im1>k;
    [L,num]=bwlabel(~im2);
    im3=label2rgb(L);
    imshow(im3);
    xlabel(strcat(num2str(k),'--',num2str(num)));
    num_aux(k)=num;
    if(num_aux(k)<num_aux(k-1))
        
        %find(L==k)
    end
    
    pause;end;%imshow(im2);xlabel(num2str(k));pause;end

figure(2),mesh(im3);
%figure(3),mesh(double(im1));

