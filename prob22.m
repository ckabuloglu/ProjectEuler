function [ out ] = prob22( file )

letters = upper(['abcdefghijklmnopqrstuvwxyz']);
length(letters);

fh = fopen(file,'r');
nameStr = fgetl(fh);
nameCell = {};

while ~(strcmp(nameStr,'"'))
    [now,nameStr] = strtok(nameStr,'","');
    nameCell = [nameCell,now];
end

nameCell = sort(nameCell);
out = nameCell;
c = 0;
total = 0;

for n = nameCell
    c = c + 1;
    n = char(n)
    len = length(n)
    score = 0;

    for m = [1:len]      
        lett = n(m)
        score = score + find(letters == lett);
    end
    score = score * c;
    total = total + score;
end

out = total;

end

