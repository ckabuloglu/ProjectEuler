function [ out ] = prob23( in )

list = [];

for n = [1:in]
    m = findDiv(n);
    if m > n
        list = [list n];
    end
end

list2 = [];
c = 0;

for a = [1:in]
    a
    for b = list
        diff = a - b;
        if ~isempty(list(list==diff))
            break
        elseif b == list(end)
            list2 = [list2 a];
        else
            continue
        end
        c = c + 1;
    end

end

out = sum(list2);

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
