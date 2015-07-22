function [out] = prob21(num)

count = 0;
list = [];

for n = [1:num-1]
    r1 = findDiv(n);
    r2 = findDiv(r1);
    
    if (r2 == n) & (n ~= r1)
        count = count + 1;
        list = [list n];
    end
    
end

time = count;
out = sum(list);

end

function [ out ] = findDiv(num)

list = [];
sq = sqrt(num);
 
    for n = [1:sq]
        if rem(num,n) == 0
            q = num/n;
            if q == n
                list = [list n];
            else
                if n == 1
                    list = [list n];
                else
                    list = [list n q];
                end
            end
        end
    end
    
out = sum(list);

end






