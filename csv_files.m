clear; close all; clc;
x = rand(30,20);
csvwrite('spreadsheet.csv',x);

%%
%Read all csv =
clear; close all; clc;
data = csvread('spreadsheet.csv');
plot(data(:,4)); % plot the fourth row

% you could also read from specific point 
data = csvread('spreadsheet.csv', 4, 12);
