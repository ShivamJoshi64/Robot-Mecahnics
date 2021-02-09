arelu = [11, -1, 30];
arelb = [0, 7, 45];
urelc = [-3, -3, -30];

crelb = UTOI(arelb) * UTOI(TINVERT(arelu)) * UTOI(TINVERT(urelc));

InInternalFormat  = UTOI(crelb)


InUserFormat= ITOU(crelb)





