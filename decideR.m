function [R, Rmin, Rfzero] = decideR(v, e, f)
    v = v/3.6;
    Rmin = v^2/9.81/(e+f);
    Rfzero = v^2/9.81/(e);
    initdes = floor(Rfzero/100)*100;
    if initdes > Rmin
        R = initdes;
    else
        R = Rmin + 20;
    end
end