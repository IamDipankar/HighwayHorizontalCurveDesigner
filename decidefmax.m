function fmax = decidefmax(v, unit)
    %% v in kmph , range : 31 to 112 km/h
    if nargin == 1
            v = v*0.621371192;
    else
        if unit == "kmph"
            v = v*0.621371192;
        end
    end
    Data = [20  30  40  50  55  60  65  70;
            .17 .16 .15 .14 .13 .12 .11 .10];
    f1 = interp1(Data(1,:), Data(2,:), v, "next");
    f2 = interp1(Data(1,:), Data(2,:), v, "previous");
    if f1 > f2    %% choosing safe side by taking smaller value of 'f'
        fmax = f2;
    else
        fmax = f1;
    end
end