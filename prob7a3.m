function [ out ] = prob7a3( n )

a = n.*100;
arr = [1:a];

for x = [2:a];
    y = 2*x;
    new = [y:x:a];
    arr(new) = 0;
end

arr(arr == 0) = [];
out = arr(n+1);
end

