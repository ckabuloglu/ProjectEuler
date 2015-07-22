function [ out ] = prob7( in )

i = 5;
prim = [2 3];

while i<in+1 
    arr = [1:i];
    for n = arr
        k = arr(n);
        r = rem(i,k);
        
        if ~(r==0)
            continue
        else
            if k==i
                prim = [prim i];
            end         
        end
    end
    i = i + 1;
end

out = prim(end);

end

