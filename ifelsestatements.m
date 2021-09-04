a = 5;
b = 6;
c = 5;

if a == b
    fprintf('a is equal to b\n')
elseif a == c
     fprintf('a is equal to c\n')
else
     fprintf('a is neither equal to b nor c\n')
end

%%
clc;
a = 5;
b = 6;
c = 5;

if (a == b) && (a==c)
    fprintf('a is equal to both b and c\n')
elseif (a == c) || (a==c)
     fprintf('a is equal to either b or c\n')
else
     fprintf('a is neither equal to b nor c\n')
end

    