function [ out ] = prob13( arr )

i = 1;
num = sum(arr);
main = num;

while num > 1
    num = num/10;
    i = i + 1;
end

a = i - 12;

out = round(main/(10^a));

end

