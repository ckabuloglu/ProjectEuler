function [ number ] = prob19( start , fin )

arrYear = [start:fin];
arrMonth = [31 28 31 30 31 30 31 31 30 31 30 31];
count = 0;
day = 1;

for a = arrYear

    fourYear = rem(a,4);
    hundredYear = rem(a,100);
    fhYear = rem(a,400);
    
    n = 0;
    
    for b = arrMonth
        n = n + 1;
        mon = b;
        if (fourYear==0) & (b==28)
            mon = 29;
        end  
        if (hundredYear==0) & (b==28)
            mon = 28;
        end
        if (fhYear==0) & (b==28)
            mon = 29;
        end
        
        for c = [1:mon]
            if c == 1
                weekDay = rem(day,7);
                if (weekDay == 0) & (a>1900)
                    count = count + 1;
                    date = [c n a] 

                end
            end
            day = day + 1;
        end
    end
end

number = count;

end

