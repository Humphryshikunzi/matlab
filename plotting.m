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

%% plot two graphs on one

clear;close all;clc;

%period
T = 2;
t = linspace(0,5,501);
x = sin(2 * pi *t / T);
y = cos(2 * pi * t / T);

figure('Position', [150 150 800 400]);
plot(t,x,'r--', 'LineWidth',1.5);
hold on;
plot(t,y,'b--', 'LineWidth',1.5);
xlabel('time (s)');
ylabel('displacement (m)');
title('A Graph of Disp against time');
grid on;
set(gca, 'FontSize', 12);
set(gca, 'FontWeight', 'Bold');
legend('sin(\theta)','cos(\theta', 'Location', 'SouthOutside','Orientation','Horizontal')
savefig('multi_plot.fig')
%%
clear; close all; clc;
%period
T = 2;
t = linspace(0,5,501);
x = sin(2 * pi *t / T);
y = cos(2 * pi * t / T);

z = zeros(2, length(t));
z(1,:) = x;
z(2,:) = y;

figure('Position',[150 150 800 800]);

subplot(2,1,1);
h1 = plot(t,z(1,:),'b-','LineWidth',1.5);
xlabel('time (s)')
ylabel('sin(\theta)');
set(gca, 'FontSize', 12);
set(gca,'FontWeight','Bold');
grid on;


subplot(2,1,2);
h2 = plot(t,z(2,:),'b-','LineWidth',1.5);
xlabel('time (s)')
ylabel('cos(\theta)');
set(gca, 'FontSize', 12);
set(gca,'FontWeight','Bold');
grid on;

savefig('subplot.fig')
%% using a loop
clear; close all; clc;
%period
T = 2;
t = linspace(0,5,501);
x = sin(2 * pi *t / T);
y = cos(2 * pi * t / T);

z = zeros(2, length(t));
z(1,:) = x;
z(2,:) = y;
lbl = {'sine(\theta)', 'cos(\theta)'};
cnt = 2;

for cnt = 1:2
    subplot(2,1,cnt);
    plot(t,z(cnt,:),'b-','LineWidth',1.5);
    ylabel(lbl);
    set(gca, 'FontSize', 12);
    set(gca,'FontWeight','Bold');
    grid on;
end
subplot(2,1,1);
title('disp (m)');
subplot(2,1,2);
xlabel('time (s)')
save('plots_in_loop')

%% open the fig file, and save it as high resolution tif file.
clear; close all; clc;
f =  openfig('subplot.fig');
saveas(f, 'subplt.tif');

%% save multiple tif as in loop
clear; close all; clc;
f(1) =  openfig('subplot.fig');
f(2) =  openfig('sign_plot.fig');
f(3) =  openfig('multi_plot.fig');
for cnt = 1:3
    saveas(f(cnt), num2str(cnt,'plot_0%d.tif'));
end
close all;
    
    

