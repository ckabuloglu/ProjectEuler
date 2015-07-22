function [ out ] = prob12( in )

i = 1;
tot = 0;
list = findprime(75000);

while i < 100*in
   tot = i*(i+1)/2;
   num = tot;
   i = i + 1
%    toto = rem(tot,2);
%    
%    if toto ~= 0
%        continue
%    end
   
   l = length(list);
   if l == 0;
       continue
   end 
   
   p = 1;
   prime = list(p);
   count = 0;
   div = [];
   
   while prime <= num
       r = rem(num,prime);
       if r == 0
            count = count + 1;
            num = num/prime;
              
       else
           div = [div count];
           count = 0;
           p = p + 1; 
           if num == 1
               break
           end
       end
       prime = list(p);
   end   
     div = [div count];
     count = 0;
     div = div + 1;
     len = prod(div);
     
   if len > in;
       out = tot;
       break
   end

end
end

function [ out ] = findprime( n )

a = n*2;
arr = [1:a];

arr(4:2:a) = 0;

    for x = [3:2:a];
        y = 2*x;
        new = [y:x:a];
        arr(new) = 0;
    end
    
    arr(1) = [];
    arr(arr == 0) = [];
    arr(arr>n) = [];
    out = arr;
end



