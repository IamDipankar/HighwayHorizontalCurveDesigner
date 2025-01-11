function L = LofTcurverateofchangeofradacc(C, V, R)
%% C at m/s^3, V as km/h , R at m
    V = V/3.6;
    L = V^3/R/C;
end