function [ num ] = prob15( grid )

num = fac(grid*2)/(fac(grid)*fac(grid));


end


function [ans] = fac(num)



if num == 1
    ans = 1;
else
    ans = num*fac(num-1);
end

end


