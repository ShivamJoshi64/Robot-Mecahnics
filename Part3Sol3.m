%% Configuration 1: [0 , 90 , -90]
trelw = [0.1 , 0.2 , 30.0];
srelb = [-0.1 , 0.3 , 0.0];
Vec3 = [0 , 90 , -90];

disp("Position and Orientation in User Frame maintaining uniformity");
WHERE(Vec3, srelb, trelw)


%% Configuration 2: [-23.6 , -30.3 , 48.0]
trelw = [0.1 , 0.2 , 30.0];
srelb = [-0.1 , 0.3 , 0.0];
Vec3 = [-23.6 , -30.3 , 48.0];

WHERE(Vec3, srelb, trelw)


%% Configuration 3: [130 , 40 , 12]

trelw = [0.1 , 0.2 , 30.0];
srelb = [-0.1 , 0.3 , 0.0];
Vec3 = [130 , 40 , 12];

WHERE(Vec3, srelb, trelw)