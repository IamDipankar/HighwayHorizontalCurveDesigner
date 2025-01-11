function [spang, maxdang, s, tanglen, E, lencir, lencomb, cpc, cpt] = elementsCalculation(L, R, dang, cpi)
    spangr = L/2/R;
    spang = spangr * 180 / pi;
    maxdangr = spangr/3;
    maxdang = maxdangr * 180 / pi;
    s = L^2/(24*R);
    tanglen = L/2 + (R + s)*tand(dang/2);
    E = (R + s)/cosd(dang/2) - R;
    lencir = R*(dang*pi/180 - 2*spangr);
    lencomb = lencir + L*2;
    if nargin == 4
        cpc = cpi - tanglen;
        cpt = cpc + lencomb;
    end
end