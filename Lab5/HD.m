function vec = HD(P)
    [V2, V, X1] = convert(P);
    vec = 10 * log(sum(V2)/V2(1)-1) / log(10);
end