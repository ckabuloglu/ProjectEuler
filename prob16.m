function [ out ] = prob16( power )

num = (2^power);
num1 = num;
total = 0;
count  = 0;

while num1 > 1
    num1 = num1/10;
    count = count + 1;
end

digit = count;

for i = [1:digit]
    digit = digit - 1;
    str = num2str(num);
    sampleS = str(1);  
    sampleN = str2num(sampleS);   
    new = sampleN*(10^digit);   
    total = total + sampleN;  
    minus = digit*sampleN;
    num = num - new;
end

out = total;

end

