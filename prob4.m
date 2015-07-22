function [ out ] = prob4( digit )

less = digit - 1;
arr = [(10^(less)):((10^(digit))-1)];
a = arr(1);
z = arr(end);
palin = [];

while a <= z
    b = a + 1;
    while b <= z
        mul = a*b;
        
        str = num2str(mul);
        str = str(end:-1:1);
        new = str2num(str);
        
        if mul == new 
            palin = [palin mul];
        end
        b = b + 1;
    end
    a = a + 1;
end

out = max(palin);

end

