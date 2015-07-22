function [ b ] = prob5( a );

last = a;
array = [1:a];
i = 2520;
condition = false;

while  ~condition
    i = i + 2520;
    c = [];
    for n = array
        r = rem(i,n);
        c = [c r];
    end
       
    if c == zeros(1,a)
        b = i;
        condition = true;
    else
        condition = false;
    end
        
end

end

