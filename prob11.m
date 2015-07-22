function [ out ] = prob11( mat,in )

[row,col] = size(mat);
minus = in - 1;
pro = [];

for x = [1:row] %scanning horizontally
    rown = mat(x,:);
    for y = [1:(col-minus)]
        m = y + minus;
        rownn = rown(y:m);
        prodo = prod(rownn);
        pro = [pro prodo];
    end
end
a = max(pro);
pro = [];

for x = [1:col] %scanning vertically
    coln = mat(:,x);
    for y = [1:(row-minus)]
        m = y + minus; 
        colnn = coln(y:m);
        prodo = prod(rownn);
        pro = [pro prodo];
    end
end
b = max(pro);
pro = [];

for x = [1:row-minus]   %scanning diagonally to the right
    rowa = mat(x,:);
    rowb = mat(x+1,:);
    rowc = mat(x+2,:);
    rowd = mat(x+3,:);
    for y = [1:col-minus]
        ele1 = rowa(y);
        ele2 = rowb(y+1);
        ele3 = rowc(y+2);
        ele4 = rowd(y+3);
        
        rownew = [ele1 ele2 ele3 ele4];
        pronew = prod(rownew);
        pro = [pro pronew];
    end
end

c = max(pro);
pro = [];

for x = [1:row-minus]   %scanning diagonally to the left
    rowa = mat(x,:);
    rowb = mat(x+1,:);
    rowc = mat(x+2,:);
    rowd = mat(x+3,:);
    for y = [1:col-minus]
        ele1 = rowa(y+3);
        ele2 = rowb(y+2);
        ele3 = rowc(y+1);
        ele4 = rowd(y);
        
        rownew = [ele1 ele2 ele3 ele4];
        pronew = prod(rownew);
        pro = [pro pronew];
    end
end

d = max(pro);
pro = [];

e = [a b c d];
out = max(e);
end

