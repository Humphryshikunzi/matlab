%%%Beam and Ball Equations and Linearization

close all;

function linearization_of_beam_ball()

f1 = figure();
ax1 = gca;

hold on

f2 = figure();
ax2 = gca;

hold on

for x1 = -10:1:10
    x1
    for x2 = -10:1:10
        [tout,xout] = ode45(@Derivs,[0 10],[x1;x2]);
        
        xlabel('x');
        ylabel('y');
        title('A Graph of y against x');
        plot(ax1,xout(:,1),xout(:,2),'r-')
        
        xlabel('x');
        ylabel('y');
        title('A Graph of y against x');
        plot(ax2,tout,xout)
    end
end



function dxdt = Derivs(t,x)

x1 = x(1);
x2 = x(2);

%%%Control
m=0.2;
%r=0.015;
g=9.81;
x3=0;
J=0.05;

x1dot = x2;
x2dot = -7.384*x3;

dxdt = [x1dot;x2dot];
