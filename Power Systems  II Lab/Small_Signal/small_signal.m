clear; close all; clc;
E = 1.35;
V = 1.0;
H=9.94;
X = 0.65;
Pm = 0.6;
D = 0.138;
f0 = 60;
Pmax = E*V/X
d0 = asin(Pm/Pmax)
Ps = Pmax*cos(d0)

wn = sqrt(pi*60/H*Ps)
z=D/2*sqrt(pi*60/(H*Ps))
wd = wn * sqrt(1-z^2),
fd=wd/(2*pi)
tau = 1/(z*wn)
th = acos(z)
Dd0 = 10*pi/180;
t = 0:.01:3; %10,30
Dd = Dd0/sqrt(1-z^2)*exp(-z*wn*t).*sin(wd*t+th);
d=(d0+Dd)*180/pi;
Dw = -wn*Dd0/sqrt(1-z^2)*exp(-z*wn*t).*sin(wd*t);
f=f0+Dw/(2*pi);
subplot(2,1,1),
plot(t,d),
grid
xlabel('t sec')
ylabel('Delta degree')
title('Delta degree Graph till 3 seconds')%10,30
subplot(2,1,2),
plot(t,f),
grid
xlabel('t sec'),
ylabel('frequency hertz')
title('Frequency hertz Graph till 3 seconds')%10,30
subplot(111)
