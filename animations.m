%%
clear; close all; clc;
t = linspace(0,1,60);
x = linspace(0,1,100);
y = linspace(0,2,200);
z = zeros(length(x), length(y), length(t));

for cnt=1:length(t)
    z(:,:,cnt) = sin(2 * pi * x' / 0.5) * cos(2 * pi * y /0.3) * t(cnt);
end

[Y,X] = meshgrid(y,x);

obj = VideoWriter('animations.avi');
obj.Quality = 100;
obj.FrameRate =20;
open(obj);
figure('Position', [200 200 600 600]);
for cnt=1:length(t)
    surf(X,Y,z(:,:,cnt));
    xlabel('x (m)');
    ylabel('y (m)');
    zlabel('z (m)');
    zlim([-1,1])
    set(gca, 'FontSize', 12);
    set(gca, 'FontWeight', 'Bold');
    colormap jet;
    colorbar;
    hold off;
    caxis([-1,1]);
    title(num2str(t(cnt),'time = %4.3f (sec)'));
    f = getframe(gcf);
    writeVideo(obj,f); 
end
obj.close();
