function [ even ] = prob2(term)

seq = [1 2];
even = [2]; %2 comes from the second element of the sequence
s = 0;

while s <= term %4000000 is the term in this case
    s = sum(seq);
    ser = [seq s];
    seq = ser (end-1:end);
    
    remo = rem(s,2);
    
    if remo == 0
        even = [even s];
    else
        even = even;
    end
end

even = sum(even);

end

