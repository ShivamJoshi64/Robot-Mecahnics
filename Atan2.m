function [theta] = Atan2(y,x)

if (x>0)
    theta = atand(y/x);
elseif (x<0 && y>=0)
    theta = atand(y/x)+180;
elseif (x<0 && y<0)
    theta = atand(y/x)-180;
elseif (x==0 && y>0)
    theta = 90;
elseif (x==0 && y<0)
    theta = -90;
else
    theta = 0;
end

