function [near, far, sol] = INVKIN(wrelb, current) 

% given
l1 = 0.5;l2 = 0.5;

% solving for theta 2
C2 = ( (wrelb(1) ^ 2) + (wrelb(2) ^ 2) - (l1^2 + l2^2) ) / (2*l1*l2);
S2 = sqrt(1-C2^2);

S2m = -abs(S2);
S2M = abs(S2);

%two solutions for theta 2
theta2m = atan2( S2m, C2);
theta2M = atan2( S2M, C2);
   

% now solving for theta 1 using two values for theta 2
    if ((wrelb(1) ^ 2) + (wrelb(2) ^ 2)) == 0
        S1m = 1;
        C1m = 0;
    else
        C1m = (((l1 + l1 * C2)*wrelb(1)) + (l2 * sin(theta2m) * wrelb(2)))  / ((wrelb(1) ^ 2) + (wrelb(2) ^ 2));
        S1m = sqrt(1-C1m^2); 
        % OR S1m = (((l1 + l1 * C2)*wrelb(2)) - (l2 * sin(theta2m) * wrelb(1)))  / ((wrelb(1) ^ 2) + (wrelb(2) ^ 2))
    end
    
   
    if ((wrelb(1) ^ 2) + (wrelb(2) ^ 2)) == 0
        S1M = 0;
        C1M = 1;
    else 
        S1M = (((l1 + l1 * C2)*wrelb(2)) - (l2 * sin(theta2M) * wrelb(1)))  / ((wrelb(1) ^ 2) + (wrelb(2) ^ 2));
        C1M = (((l1 + l1 * C2)*wrelb(1)) + (l2 * sin(theta2M) * wrelb(2)))  / ((wrelb(1) ^ 2) + (wrelb(2) ^ 2));
        %S1M = sqrt(1-C1M^2);
    end
    
    
    theta2m = atan2( S2m, C2) * 180/pi;
    theta2M = atan2( S2M, C2) * 180/pi;
    
    theta1m = atan2(S1m,C1m) * 180/pi;
    theta1M = atan2(S1M,C1M) * 180/pi;
    
    theta3m = wrelb(3) - (theta1m + theta2m);
    theta3M = wrelb(3) - (theta1M + theta2M);
    
    %Solution A
    A = [theta1m - current(1), theta2m - current(2) , theta3m - current(3)];
    for i = (1:3)   
        if A(i)>= 180 
            A(i) = 360 - A(i);
        elseif A(i) < -180
            A(i) = 360 + A(i);
        end
    end
    %disp('sol for A is '); %for part3
    %disp(A); %for part3
    
    if ((170 >= A(1) && A(1) >= -170) && (170 >= A(2) && A(2) >= -170) && (170 >= A(3) && A(3)>= -170)) 
        sola = 1;
       % A = [theta1m - current(1), theta2m - current(2) , theta3m - current(3)];
    else
        sola = 0;
        %disp('Invalid Solution for A') 
        A = [0 0 0];
    end
    
    %Solution B  
    B = [theta1M - current(1), theta2M - current(2), theta3M - current(3)];
    
    for i = (1:3)   
        if B(i)>= 180 
            B(i) = 360 - B(1);
        elseif B(i) < -180
            B(i) = 360 + B(i);
        end
    end
    
    %disp('sol for B is '); %for part3
    %disp(B); %for part3
    
    if ((170 >= B(1) && B(1) >= -170) && (170 >= B(2) && B(2) >= -170) && (170 >= B(3) && B(3) >= -170))
        solb = 1;
       % B = [theta1M - current(1), theta2M - current(2), theta3M - current(3)]; 
    else
        solb=0;
        disp('Invalid Solution for B');
        B=[0,0,0];
    end
    
    
    %Considering only theta1 to compare for far and near solution
    if (sola == 0 && solb == 0)
        near = [0 0 0];
        far = [0 0 0];
        sol = 0;
    elseif (sola > solb) %sola=1 solb=0
        near = A;
        far = B;
        sol = 1;
    elseif (solb > sola) %sola=0 solb=1
        near = B;
        far = A;
        sol = 1;
    else %sola=1 solb=1
        if (abs(B(1)) > abs(A(1)))
            near = A;
            far = B;
            sol=1;
        else
            near = B;
            far = A;
            sol=1;
        end   
    end
   
end 
    
