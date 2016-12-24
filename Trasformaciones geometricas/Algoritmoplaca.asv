close all, clear all
format compact
iptsetpref('ImshowAxesVisible','on')
im1 = imread('PlacaBlancoNegro.bmp');
figure(1), imshow(im1)
x_placa = [84;296;310;128]; y_placa = [61;19;134;254];
[Y,X] = size(im1);
Xc = X/2; Yc = Y/2;
Xpd = x_placa - Xc;
Ypd = y_placa - Yc;
hold on
plot(x_placa,y_placa,'y+')
figure(2)
Xminmax = [1-Xc; X-Xc; X-Xc; 1-Xc; 1-Xc];
Yminmax = [1-Yc; 1-Yc; Y-Yc; Y-Yc; 1-Yc];
plot(Xminmax,Yminmax,'cs')
line(Xminmax,Yminmax)
axis ij
hold on
plot(Xpd,Ypd,'md')
Xpda = Xpd; Xpda(5) = Xpda(1); Ypda = Ypd; Ypda(5) = Ypda(1);
line(Xpda,Ypda,'Color',[1,0,0])
title('Coordenadas originales de la imagen y de la placa')
clear Xpda Ypda
%%
Xtd = [-165;165;165;-165];
Ytd = [-80;-80;80;80];
figure(3), plot(Xtd,Ytd,'md')
Xtda = Xtd; Xtda(5) = Xtda(1); Ytda = Ytd; Ytda(5) = Ytda(1);
line(Xtda,Ytda,'Color',[1,0,0])
clear Xtda Ytda
Cd = [ones(4,1) Xpd Ypd Xpd.*Ypd];
Cdi = Cd^(-1);
ad = Cdi*Xtd;
bd = Cdi*Ytd;
Xmin = 1-Xc; Ymin = 1-Yc;
Xmax = X-Xc; Ymax = Y-Yc;

figure(3), hold on

Cminmax = [1 Xmin Ymin Xmin*Ymin; 1 Xmax Ymin Xmax*Ymin; 1 Xmax Ymax Xmax*Ymax; 1 Xmin Ymax Xmin*Ymax];
Xtminmax = round(Cminmax*ad);
Ytminmax = round(Cminmax*bd);
Xtminmaxa = Xtminmax; Xtminmaxa(5) = Xtminmaxa(1);
Ytminmaxa = Ytminmax; Ytminmaxa(5) = Ytminmaxa(1);
plot(Xtminmax,Ytminmax,'cs')
line(Xtminmaxa,Ytminmaxa)
axis ij, axis equal
title('Coordenadas transformadas de la imagen y de la placa')
clear Xtminmaxa Ytminmaxa
%%
Xtmin = min(Xtminmax); Ytmin = min(Ytminmax);
Xtmax = max(Xtminmax); Ytmax = max(Ytminmax);
im4 = uint8(zeros(Ytmax-Ytmin+1,Xtmax-Xtmin+1));

Ci = [ones(4,1) Xtd Ytd Xtd.*Ytd];
Cii = Ci^(-1);
ai = Cii*Xpd;
bi = Cii*Ypd;

for yt=Ytmin:Ytmax
    for xt=Xtmin:Xtmax
        y = round([1 xt yt xt*yt]*bi);
        x = round([1 xt yt xt*yt]*ai);
        m = y-Ymin+1;
        n = x-Xmin+1;
        if ((x>=Xmin) & (x<=Xmax) & (y>=Ymin) & (y<=Ymax))
            im4(yt-Ytmin+1,xt-Xtmin+1) = im1(y-Ymin+1,x-Xmin+1);
        end
    end
end
figure(4), imshow(im4)
