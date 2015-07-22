function [ out ] = factorialRec( num )

if num == 1
    out = 1
else
   out = num*factorialRec(num-1);
end
end

