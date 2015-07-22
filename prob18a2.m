function [ out ] = prob18a2( tri,time )

len = length(tri);
array = [];

for a = [1:time]
    most = tri{1}(1);
    n = 1;
    for m = [2:len]
        random = round(100*rand());
        if random >= 51     
            most = most + tri{m}(n);
            n = n;
        else

            most = most + tri{m}(n+1);
            n = n+1;
        end
    end
    array = [array most];
end
out = max(array);

end

