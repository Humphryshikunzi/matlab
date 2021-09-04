%% common operations
clear; close; clc;
a = ones(4,5)
b = zeros(5,6)
c = eye(6,6)
d = rand(4,3)

%%
clear; close; clc;
%matrix operations
 mat_a = rand(7,2)
 mat_b = rand(7,2)
 
 sum = mat_a + mat_b
 div = mat_a - mat_b
 
 a = rand(1,5)
 b = rand(1,5)
 
 % for multiplying matrixes, the number of rows must be equal to the number
 % of colms
 c = b * a'
 
 % dot multiplication
 d = a .* b
 
 
 %inversion of the matrices before multiplication
 aa = rand(5,5)
 bb = rand(5,1)
 bc = rand(5,2)
 
 cc = inv(aa) * bb
 cd = inv(aa) * bc
 
 ad = det(aa)
 
 %the square, third and fourth powers, as well as square roots of matrixes
 
 % square
 e = aa .^ 2 
 
 % square root
 r = aa .^ 0.5
 
 % sixth power
 
 sp = aa .^ 6
 
 
 
