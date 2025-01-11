function [chord, tandang, cumarclen, chordlen] =  setcircle(n, L, R, dang)
% n : Number of chords
% Lcir : Lenght of the transition curve
% dang : defection angle

    spang = L/2/R / pi * 180;
    beta = (dang - 2*spang);
    subang = beta/2/n;
    tandange = subang/2;
    chord = zeros([1, n]);
    tandang = chord;
    cumarclen = chord;
    Lcir = R*(dang - 2*spang)*pi/180;
    chordlen = Lcir/2/n;
    for i = 1:n
        chord(i) = i;
        tandang(i) = tandange*i;
        cumarclen(i) = chordlen * i;
    end
end