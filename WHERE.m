function frame = WHERE(Vec3, srelb,trelw)

%calculating wrelb by given vector of joint angles
%assuming l1 = 0.5;l2 = 0.5 in KIN function

%Frame gives trels
frame = ITOU(  UTOI(TINVERT(srelb)) * UTOI(KIN(Vec3)) * UTOI(trelw));

%InInternalFormat = UTOI(frame)