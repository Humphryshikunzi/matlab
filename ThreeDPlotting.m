clear; close all; clc;
x = linspace(0,1,100);
y = linspace(0,2,200);
z = sin(2 * pi * x' / 0.5) * cos(2 * pi * y /0.3);

[Y,X] = meshgrid(y,x);

figure('Position', [200 200 600 600]);
surf(X,Y,z);
xlabel('x (m)');
ylabel('y (m)');
zlabel('z (m)');
set(gca, 'FontSize', 12);
set(gca, 'FontWeight', 'Bold');
colormap jet;
colorbar;

