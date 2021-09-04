clear; close all; clc;
syms x
y = sin(x)
Y = int(y,x) % integrate y with respect to x
Y1 =int(y,x,0,pi) % integrate y with respect to x from 0 to pi

x = pi/4
ye = eval(Y) % integrate y with respect to x and evaluate