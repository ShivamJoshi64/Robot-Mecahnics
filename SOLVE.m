function [near,far, sol] = SOLVE(trels, current, srelb, trelw)

if trels(1) >1 || trels(2) > 1
     disp("No Near or Far Solutions");
     disp ("Solution = FALSE");
      near = [0 0 0];
      far = [0 0 0];
      sol = 0;
else
    wrelb = TmulT( (TmulT(srelb, trels)) , TINVERT(trelw));
    [near, far, sol] = INVKIN(wrelb, current);
    
end


