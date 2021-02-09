function crela = TmulT(brela,crelb)
% frame is crela
% user inputs are in 1x3 format

% output is also converted to 1x3 format (user format) for uniformity
crela = ITOU( (UTOI(brela)) * (UTOI(crelb)) );

% InInternalFormat = UTOI(crela)
end






