function [ out ] = prob10( n )

a = n*2;
arr = [1:a];

arr(4:2:a) = 0;

for x = [3:2:a];
    y = 2*x;
    new = [y:x:a];
    arr(new) = 0;
end
    arr(1) = [];
    arr(arr == 0) = [];
    arr(arr>n) = [];
    out = sum(arr(arr<n+1));
end

