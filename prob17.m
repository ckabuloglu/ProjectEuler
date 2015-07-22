function [ out ] = prob17( in )

list = [1:in];
con = false;
total = 0;
skip = true;

for  n = list
    now = [];
    if n < 10
        digit = 1;
    elseif n < 100
        digit = 10;
    elseif n < 1000
        digit = 100;
    else
        digit = 4;
    end
    
    numS = num2str(n);
    len = length(numS);
    one = str2num(numS(end));
               
        if (digit == 10)
            next = str2num(numS(1));
        elseif (digit == 100)
            next = str2num(numS(2));
            allnext = [str2num(numS(2)) str2num(numS(3))];
            allnext = sum(allnext);
        elseif (digit == 1000)
            next = str2num(numS(3));

        else
            next = 0;
        end
    
    for m = [len:-1:1]
        
        if con
            con = false;
            break
        end
        
        if (next==1) & skip
            skip = false;
            continue
        end
        
        mm = len - m;
                      
    num = numS(m);
    num = str2num(num);
    
        switch num
            case {1}
                switch mm
                    case {0}
                        str = 'one';
                    case {1}
                        switch one
                            case {1}
                                str = 'eleven';
                            case {2}
                                str = 'twelve';
                            case {3}
                                str = 'thirteen';
                            case {4}
                                str = 'fourteen';
                            case {5}
                                str = 'fifteen';
                            case {6}
                                str = 'sixteen';
                            case {7}
                                str = 'seventeen';
                            case {8}
                                str = 'eighteen'; 
                            case {9}
                                str = 'nineteen';
                            case {0}
                                str = 'ten';                                
                        end
                    case {2}
                        if allnext == 0
                            str = 'onehundred';
                        else
                            str = 'onehundredand';
                        end
                    case {3}
                        str = 'onethousand';
                end
            case {2}
                switch mm
                    case {0}
                        str = 'two';
                    case {1}
                        str = 'twenty';
                    case {2}
                        if allnext == 0
                            str = 'twohundred';
                        else
                            str = 'twohundredand';
                        end
                end
            case {3}
                switch mm
                    case {0}
                        str = 'three';
                    case {1}
                        str = 'thirty';
                    case {2}
                        if allnext == 0
                            str = 'threehundred';
                        else
                            str = 'threehundredand';
                        end
                end            
            case {4}
                switch mm
                    case {0}
                        str = 'four';
                    case {1}
                        str = 'forty';
                    case {2}  
                        if allnext == 0
                            str = 'fourhundred';
                        else
                            str = 'fourhundredand';
                        end
                end            
            case {5}
                switch mm
                    case {0}
                        str = 'five';
                    case {1}
                        str = 'fifty';
                    case {2}
                        if allnext == 0
                            str = 'fivehundred';
                        else
                            str = 'fivehundredand';
                        end
                end            
            case {6}
                switch mm
                    case {0}
                        str = 'six';
                    case {1}
                        str = 'sixty';
                    case {2}
                        if allnext == 0
                            str = 'sixhundred';
                        else
                            str = 'sixhundredand';
                        end
                end            
            case {7}
                switch mm
                    case {0}
                        str = 'seven';
                    case {1}
                        str = 'seventy';
                    case {2}
                        if allnext == 0
                            str = 'sevenhundred';
                        else
                            str = 'sevenhundredand';
                        end
                end            
            case {8}
                switch mm
                    case {0}
                        str = 'eight';
                    case {1}
                        str = 'eighty';
                    case {2}
                        if allnext == 0
                            str = 'eighthundred';
                        else
                            str = 'eighthundredand';
                        end
                end            
            case {9}
                switch mm
                    case {0}
                        str = 'nine';
                    case {1}
                        str = 'ninety';
                    case {2}
                        if allnext == 0
                            str = 'ninehundred';
                        else
                            str = 'ninehundredand';
                        end
                end 
            case {0}
                continue
        end
        now = [str now];
    end
now    
lenNum = length(now);
total = total + lenNum;
skip = true;
    
end

out = total;

end

