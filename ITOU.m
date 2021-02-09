function vec3 = ITOU(frame)

%output angle is in degrees
theta = (atan2(frame(2,1),frame(1,1)))*180/pi;

%output vector is 1x3
vec3 = [frame(1,3),frame(2,3),theta];
end