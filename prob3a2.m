function [ larg ] = prob3a2( num )

a = floor(sqrt(num));
arr = [1:a];
pri = [];
m = 0;

for m = arr
    remo = rem(num,arr(m));
    
    if remo == 0
        pri = [pri arr(m)];
    end
end

larg = pri(end);

end

