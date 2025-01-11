function [pegs, l, alphar, alphad, y, supelv] = settranscurve(cl, R, L, hmax)
% cl : Chord lenght
% R = Radius
% L = Lenght of Transition Curve
% h_max : h_max
    n = ceil(L/cl);
    pegs = zeros([1, n]);
    l = zeros([1, n]);
    alphar = zeros([1, n]);
    alphad = zeros([1, n]);
    y = zeros([1, n]);
    supelv = zeros([1, n]);
    % peg station
    for i = 1:n
        pegs(i) = i;
    end
    % l
    for i = 1:n
        l(i) = cl*i;
    end
    l(end) = L;
    % alphar , alphad, y, supelv 
    for i = 1:n
        alphar(i) = l(i)^2/(6*R*L);
        alphad(i) = alphar(i) / pi * 180;
        y(i) = l(i) * tan(alphar(i));
        supelv(i) = hmax/L * l(i);
    end

end