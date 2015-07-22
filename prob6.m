function [ out ] = prob6( in )

arr = [1:in];
sum1 = sum(arr);
val1 = sum1^2;
val2 = 0;

for n = arr
    a = n^2;
    val2 = val2 + a;
end

out = val1 - val2;

end

