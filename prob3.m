function [ larg ] = prob3( num )

numo = num;
num = floor(num/2)
str = [];
arr = [1:num];
i = 1;
prim = [];

while i <= arr(end)
    remo = rem(numo,arr(i));
    if remo == 0
        prim = [prim arr(i)];
    else
        prim = prim;
    end
    i = i + 1;
end

prim = prim(2:end);
n = 1;

len = length(prim);

if len > 0;
    con = prim(1);

    if con == 2 | con == 3
        prim = prim(2:end);
    end

    con = prim(1);

    if con == 2 | con == 3
        prim = prim(2:end);
    end

    len = length(prim)


    while n<= len
        target = prim(n);
        tar = target - 1;
        new = [2:tar];
        m = 1;
        val = 0;
        lan = length(new);
        while m <= lan
            rema = rem(target,new(m));
            if rema == 0
                val = val + 1;
            else
                val = val;
            end
            m = m + 1;
        end

        if val == 0
            str = [str target];
        end

        n = n + 1;
    end

    larg = str(end);
else
    larg = 'This is a prime number';
end
end

