function [hmax] = decidehmax(b,emax)
%Finds maximum superelevation of the road in m
%   takes emax 0.08 as default, b in m
if nargin == 1
    hmax = b * 0.08;
else
    hmax = b * emax;
end
end