function [ifs] = escala(im,X,Y)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
d1=abs(X(1)-X(2));
d2=abs(Y(1)-Y(2));

if(d1~=0&&d2~=0)
if(d1>=d2)
    im3=im(min(Y):max(Y),min(X):floor(min(X)+((max(X)-min(X))/2)));
    im4=im(min(Y):max(Y),floor(min(X)+((max(X)-min(X))/2)):max(X));
    [F1,C1]=size(im3);
    im1=imresize(im4,[max(Y)-min(Y)+1 C1+10],'bilinear');
    im2=imresize(im3,[max(Y)-min(Y)+1 C1-11],'bilinear');
    ims=[im3 im4];
    imf=[im1 im2];
    ifs=im;
    ifs(min(Y):max(Y),min(X):max(X))=imf;
    
    
elseif(d1<d2)
    im3=im(min(Y):floor(min(Y)+((max(Y)-min(Y))/2)),min(X):max(X));
    im4=im(floor(min(Y)+((max(Y)-min(Y))/2))+1:max(Y),min(X):max(X));
    [F1,C1]=size(im3);
    im1=imresize(im4,[F1+10 max(X)-min(X)+1],'bilinear');
    im2=imresize(im3,[F1-11 max(X)-min(X)+1],'bilinear');
    ims=[im3;im4];
    imf=[im1;im2];
    ifs=im;
    ifs(min(Y):max(Y),min(X):max(X))=imf;
end
else
     disp('Error los puntos selecciondos no son validos para la trasformacion ');
end
end