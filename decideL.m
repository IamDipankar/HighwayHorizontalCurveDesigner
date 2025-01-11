function [L, Lacc, Lgrad] = decideL(hmax, onein, C, V, R)
    Lacc = LofTcurverateofchangeofradacc(C, V, R);
    Lgrad = LofTcurveArbGrad(hmax, onein);
    if Lacc < Lgrad
        L = Lacc;
    else
        L = Lgrad;
    end
    % lazy decission
end