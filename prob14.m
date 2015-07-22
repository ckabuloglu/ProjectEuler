function [ start ] = prob14( until )

chain = 1;
start = 1;

for i = [1:until]
    n = i
    count = 1;
    while n ~= 1
        r = rem(n,2);
        if n == 1
            break
        elseif r == 0
            n = n/2;
            count = count + 1;
        elseif r == 1
            n = 3*n + 1;
            count = count + 1;
        end
    end
    
    if count > chain
        chain = count;
        start = i;
    end
end

end

