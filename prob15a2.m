function [ out ] = prob15a2( in )
tris = [];
tot = 0;
sumsum = 0;

for i = [1:in]
    tot = tot + i;
    tris = [tris tot];
    sumsum = sum(tris) + sumsum;
    i = i + 1;
end

out = sumsum;

end

