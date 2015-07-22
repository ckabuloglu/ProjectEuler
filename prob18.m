function [ most ] = prob18( tri )

start = tri{1}(1);

best = start + findBest(tri,2,1);

most = best;

end

function [best] = findBest(tri ,row, n)

len = length(tri);

p1 = tri{row}(n);
p2 = tri{row}(n+1);

if row == len
    if p1 > p2
        best = p1;
    else
        best = p2;
    end
else
    best1 = p1 + findBest(tri, row+1, n);
    best2 = p2 + findBest(tri, row+1, n+1);

    if best1 > best2
        best = best1;
    else
        best = best2;
    end
end

end

