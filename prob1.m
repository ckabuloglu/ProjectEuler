function [ suma ] = prob1( num )

i = 0;
all = [];
numnew = num - 1;

while (i < numnew)
    i = i + 1;
    a = rem(i,5);
    b = rem(i,3);
     if a==0
         all = [all i];
     else if b == 0
         all = [all i];
     else
         all = all;    
     end   
end

suma = sum(all);

end

