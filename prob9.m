function [ mul ] = prob9( in )

arr = [1:in];
mul = 0;

for a = arr
    b = a+1;
    x = b;
    aa = a^2;
    for b = [x:in]
        bb = b^2;
        cc = aa + bb;
        c = sqrt(cc);
        
        remo = rem(c,1);
        
        if remo == 0
            total = a + b + c;
            if total == in
                mul = a*b*c;
                break
            end
        end      
    end
    
    if mul > 0
        break
    end
    
end

end

