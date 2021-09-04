clear;close all;clc;

%period
T = 2;
t = linspace(0,5,501);
x = sin(2*pi*t/T);

figure('Position', [150 150 800 400]);
plot(t,x,'r--', 'LineWidth',1.5);
xlabel('time (s)');
ylabel('displacement (m)');
title('A Graph of Disp against time');
grid on;
set(gca, 'FontSize', 12);
set(gca, 'FontWeight', 'Bold');
savefig('sign_plot.fig')