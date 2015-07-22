function [out] = prob24(arr,num)

list = perm(arr);

out = list(num,:);

end

function [ list ] = perm( arr )

len = length(arr);
arr = sort(arr);

list = [];

if len == 1
    list = arr(1);
else
    len = length(arr);
    for n = [1:len]
        rep = arr;
        now = rep(n);
        rep(rep==now) = [];
        len2 = length(rep);
        num = factorialRec(len2);
        now = ones(num,1)*now;
        list = [list;now,perm(rep)];
        
    end 
end

end



