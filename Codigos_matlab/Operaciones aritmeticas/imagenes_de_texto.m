%% figura 1620
clc, clear all, close all;
im1=imread('im1620.png');
im2=uint8(255./108.*(double(im1)-11));
im5=uint8((ones(size(im2))).*255);
im4=uint8((ones(size(im2))).*255);
[m,n]=size(im2);
im3=im1;
sf=fspecial('sobel');
 sc=sf';
 im1=imfilter(im1,sc);
 im1=255-im1;
for i=1:m-1
     for j=1:n-1
            vec=[im1(i,j) im1(i+1,j) im1(i,j+1) im1(i+1,j+1)];
            im4(i,j)=min(vec);
     end
end
 for i=1:m-3
     for j=1:n-3
            vec=[im2(i,j) im2(i+1,j) im2(i+2,j) im2(i,j+1) im2(i+1,j+1)...
                 im2(i+2,j+1) im2(i,j+2) im2(i+1,j+2) im2(i+2,j+2)];
            im5(i,j)=min(vec);
     end
 end
im7=im5>=70;
im6=im4>=210;
%figure(1),imshow(im3) 
%figure(2),imshow(im1)
%figure(3),imshow(im4)
figure(4),imshow(im6)
figure(5),imshow(im7);    
%x=0:255;
%im1hist=hist(im2(:),x);
%im2hist=hist(im3(:),x);
%im3hist=hist(im4(:),x);
%figure(6), subplot(4,1,1), stem(im1hist,'marker','none');
%subplot(4,1,2), stem(im3hist,'marker','none')
%subplot(4,1,3), stem(im3hist,'marker','none')

%% figura 1619
clc, clear all, close all;
im1=imread('im1619.png');
im2=uint8(255./116.*(double(im1)-14));
im3=im1;
[m,n]=size(im2);
sf=fspecial('sobel');
sc=sf';
im1=imfilter(im1,sc);
im1=255-im1;
for i=1:m-1
     for j=1:n-1
            vec=[im1(i,j) im1(i+1,j) im1(i,j+1) im1(i+1,j+1)];
            im4(i,j)=min(vec);
     end
end
for i=1:m-3
     for j=1:n-3
            vec=[im2(i,j) im2(i+1,j) im2(i+2,j) im2(i,j+1) im2(i+1,j+1)...
                 im2(i+2,j+1) im2(i,j+2) im2(i+1,j+2) im2(i+2,j+2)];
            im5(i,j)=min(vec);
     end
end

im7=im5>=70;
im6=im4>=210;
%figure(1),imshow(im3) 
%figure(2),imshow(im1)
%figure(3),imshow(im4)
figure(4),imshow(im6)
figure(5),imshow(im7);
%% figura 1621
clc, clear all, close all;
im1=imread('im1621.png');
im2=uint8(255./72.*(double(im1)-7));
im3=im1;
[m,n]=size(im2);
sf=fspecial('sobel');
sc=sf';
im1=imfilter(im1,sc);
im1=250-im1;
for i=1:m-1
     for j=1:n-1
            vec=[im1(i,j) im1(i+1,j) im1(i,j+1) im1(i+1,j+1)];
            im4(i,j)=min(vec);
     end
end
for i=1:m-5
     for j=1:n-5
            vec=[im2(i,j) im2(i+1,j) im2(i+2,j) im2(i+3,j) im2(i+4,j)...
                 im2(i,j+1) im2(i+1,j+1) im2(i+2,j+1) im2(i+3,j+1) im2(i+4,j+1)...
                 im2(i,j+2) im2(i+1,j+2) im2(i+2,j+2) im2(i+3,j+2) im2(i+4,j+2)...
                 im2(i,j+3) im2(i+1,j+3) im2(i+2,j+3) im2(i+3,j+3) im2(i+4,j+3)...
                 im2(i,j+4) im2(i+1,j+4) im2(i+2,j+4) im2(i+3,j+4) im2(i+4,j+4)];
            im5(i,j)=min(vec);
     end
end

im7=im5>=90;
im6=im4>=230;
figure(5),imshow(im7)
figure(4),imshow(im6)
%% figura 1623
clc, clear all, close all;
im1=imread('im1623.png');
im2=uint8(255./95.*(double(im1)-9));
im3=im1;
[m,n]=size(im2);
sf=fspecial('sobel');
sc=sf';
im1=imfilter(im1,sc);
im1=255-im1;
for i=1:m-1
     for j=1:n-1
            vec=[im1(i,j) im1(i+1,j) im1(i,j+1) im1(i+1,j+1)];
            im4(i,j)=min(vec);
     end
end
for i=1:m-5
     for j=1:n-5
            vec=[im2(i,j) im2(i+1,j) im2(i+2,j) im2(i+3,j) im2(i+4,j)...
                 im2(i,j+1) im2(i+1,j+1) im2(i+2,j+1) im2(i+3,j+1) im2(i+4,j+1)...
                 im2(i,j+2) im2(i+1,j+2) im2(i+2,j+2) im2(i+3,j+2) im2(i+4,j+2)...
                 im2(i,j+3) im2(i+1,j+3) im2(i+2,j+3) im2(i+3,j+3) im2(i+4,j+3)...
                 im2(i,j+4) im2(i+1,j+4) im2(i+2,j+4) im2(i+3,j+4) im2(i+4,j+4)];
            im5(i,j)=min(vec);
     end
end
im7=im5>=58;
im6=im4>=230;
figure(5),imshow(im7)
figure(4),imshow(im6)