% ploting phase potraits for eigen values of beam and ball equation
figure

[x1,x2] = meshgrid(-10:1:10,-10:1:10);
m=0.2; % kg
g=9.81; % m/s2
j=0.05; % kg.m2
jb = 2.628*10^-5; %kg.m2
r = 0.5; % mtrs
x3=0;

x1dot = x2;
x2dot = -7.384;

quiver(x1,x2,x1dot,x2dot);  % ploting using arrows

xlabel('x axis')
ylabel('y axis')

title('ploting phase potraits for eigen values of beam and ball equation')

xlim([-10 10]);
ylim([-10 10]);

grid

hold on

t = -10:0.1:10;

plot(t,t,'r') % ploting the first eigen vector (x,y)
plot(t, -4*t,'r') % ploting the first eigen vector (x,4y)

% solve the ode to put the trajectory on the plot
%[t, yy] = ode45(@myode,[0 20], [2 8])% start out from x(0) = 2; y(0) = 8

%plot(yy(:,1),yy(:,2), 'k') % plot the trajectory in black



