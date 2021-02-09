function frame = KIN(vec3)
% vec3 is input vector of three angles
theta1 = vec3(1); theta2 = vec3(2); theta3 = vec3(3);
l1 = 0.5; l2 = 0.5; 
% assumption
l3 = 0.0;

% conversion to degrees
t1 = theta1 * pi/180;
t2 = theta2 * pi/180;
t3 = theta3 * pi/180;


In1 = [l1*cos(t1), l1*sin(t1), theta1];
In2 = [l2*cos(t2), l2*sin(t2), theta2];
In3 = [l3*cos(t3), l3*sin(t3), theta3];

%frame is wrelb
frame = ITOU(UTOI(In1) * UTOI(In2) * UTOI(In3));
InInternalFormat = UTOI(frame);
end




