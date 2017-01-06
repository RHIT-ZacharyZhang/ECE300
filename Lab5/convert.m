function [V2, V, X1] = convert(dbV)
    V2 = 10.^(dbV./10);
    V = sqrt(V2*2);
    X1 = V / 2;
end