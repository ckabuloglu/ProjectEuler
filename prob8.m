function [ out ] = prob8( in,num )

len = length(in);
new = [];

for n = [1:len]
    ele = str2num(in(n));
    new = [new ele];
end

k = num-1;
son = [];
bas = [];

for m = [1:len-k]
    ara = [m:m+k];
    part = new(ara);
    par = prod(part);
    son = [son par];
    bas = [bas; part];
end

out= max(son);


end

