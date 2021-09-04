clear; close all; clc;

func1 = @(d,t,w) (exp(d * t).*sin(w * t)); % inline function
time = linspace(0,2,2001);
freq = 100; 
omega = 2 * pi * freq;
decay = -3;
p = func1(decay, time, omega);
plot(time,p)