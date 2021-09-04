%separate elements of the array with space%
%elements in a row%
a = [1 2 3 4 5 6];

%elements in a row%
b = [1, 2, 3, 4, 5, 6];

%elements in a col%
bcol = [1;2;3;4;5;6];

%transpose of a%
c = a';

% matrix row by col

d = [12 15 63; 45 69 74; 78 14 782];

% get the specific element by index, here indexes starts from 1
e = d(3,1);

f = a(1, 2:4);
g = a(1, 3:end);

ind = [1 3];
h = d(ind,ind);
i = fliplr(d);
j = flipud(i);
k = d(1:end, 2);
l = d(2:3, 2:3);