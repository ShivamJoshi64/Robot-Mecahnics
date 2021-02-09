function frame = UTOI (vec3)

%Insert angle in degrees
theta = (vec3(3)*pi)/180;

frame = [cos(theta) , -sin(theta), vec3(1);
          sin(theta), cos(theta), vec3(2);
          0 , 0 , 1];
end