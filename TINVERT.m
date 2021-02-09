function frame = TINVERT(brela)
% frame is arelb

% homogenous transformation of user input using UTOI function
HT = UTOI(brela);

% extracting rotation matrix from HT and transposing it
R = HT(1:2,1:2);
Rtranspose = R';

% multiplying position vector with transpose of rotation matrix
trans = Rtranspose*HT(1:2,3);

% final frame arelb is returned in user format for uniformity
frame = ITOU([Rtranspose,-trans;0,0,1]);

end

