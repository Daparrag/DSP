function [K,P] = Evalcel(X,Y)

if (1<=X(1) && X(1)<=80 && 1<=X(1) && X(1)<=80 )
        K=1; 
      elseif ( 82<=X(1) && X(1)<=160 && 82<=X(2) && X(2)<=160)
        K=2;  
      elseif ( 162<=X(1) && X(1)<=240 && 162<=X(2) && X(2)<=240)
        K=3; 
      elseif ( 240<=X(1) && X(1)<=320 && 240<=X(2) && X(2)<=320)
        K=4;
   else
        disp('Los datos de X no se encuentran en el mismo plano');
        K=0;
        P=0;

end

    if ( 1<=Y(1) && Y(1)<=60 && 1<=Y(2) && Y(2)<=60)
             P=1 ; 
        elseif ( 60<=Y(1) && Y(1)<=120 && 60<=Y(2) && Y(2)<=120)
             P=2;  
        elseif ( 120<=Y(1) && Y(1)<=180 && 120<=Y(2) && Y(2)<=180)
             P=3; 
    elseif (180<=Y(1) && Y(1)<=240 && 180<=Y(2) && Y(2)<=240)
             P=4; 
    else
        disp('Los datos de Y no se encuentran en el mismo plano');
        K=0;
        P=0;
    end
 
end