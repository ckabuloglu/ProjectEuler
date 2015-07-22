function [ out ] = prob14a2( in )

n=in;
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
    
out = count;

end

