clear; close all; clc;
x = -10:1:10;
y = x.^2;
fid = fopen('test2.txt', 'w');
for cnt =1:length(x)
    fprintf(fid, '%d\t%d\n', x(cnt), y(cnt));
end
fclose(fid);
plot(x,y)
%%
clear; close all; clc;

fid = fopen('test2.txt','r');
data = textscan(fid, '%d%d','delimiter', '\n');
fclose(fid);

n = data{1};
m = data{2};
plot(n,m)

