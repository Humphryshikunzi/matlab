clear; close all; clc;
freq = 2 * logspace(1,4,100);
omega = 2 * pi *freq;
theta = linspace(0,2*pi,361);
d = 5e-3;
c = 343; % speed of sound
p1 = ones(length(freq),length(theta));
p2 = exp(1i * d * omega' * cos(theta)/c);
pg = (p2 - p1)/d; % pressure gradient
pg_db = 20 * log10(abs(pg)); % pressure in db, 

%%
ang = deg2rad([0 15 30 45 60 75]);

figure('Position',[100 100 800 600]);
for cnt =1:length(ang)
    ind = find(theta==ang(cnt));
    semilogx(freq, pg_db(:,ind),'LineWidth',1.5);
    hold on;
end
xlabel('Freq (Hz)');
ylabel('Pres. Grad. (dB)');
title('Logarithmic Plot');
set(gca, 'FontSize', 12);
set(gca, 'FontWeight', 'Bold');
xlim([min(freq) max(freq)]);
ylim([-25 55]);
grid minor;
legend('\theta = 0 deg','\theta = 15 deg','\theta = 30 deg','\theta = 45 deg','\theta = 60 deg','\theta = 75 deg', 'Location', 'SouthEast');

%%
f = [20 200 2000 20000]
figure('Position', [100 100 900 900]);
for cnt =1:length(f)
    ind = find(freq == f(cnt));
    subplot(2,2,cnt);
    polarplot(theta, abs(pg(ind,:)./(omega(ind))), 'LineWidth', 1.5);
    title(num2str(f(cnt),'freq. = %d Hz'));
    set(gca,'FontSize', 12);
    set(gca, 'FontWeight', 'Bold');
end
rlim([0 3.5e-3]);