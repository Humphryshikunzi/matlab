clear; close all; clc;

% w deletes the previous data, writes new
fid = fopen('test.txt', 'w');
fprintf(fid, 'Hello Kenya. How are things \n');
fprintf(fid, 'This is Africa, the bright continent \n');
fclose(fid);

% a appends new line without deleting the previous
fid = fopen('test.txt', 'a');
fprintf(fid, 'Hello Kenya. How are things \n');
fprintf(fid, 'This is Africa, the bright continent \n');
fclose(fid);

clear; close all; clc;
fid = fopen('test.txt', 'r');
data = textscan(fid, '%s', 'delimiter', '\n');
fclose(fid);

% open the data
data{1}{2}