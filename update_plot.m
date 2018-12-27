% Plot Updates

function update_plot(t,agents,average_position)
BOIDSCONSTANTS


if t==1
    view(3) %initialize in 3d
else

%get current azimuth and elevation for manual rotation control
[azimuth,elevation]=view; 

% plot the boids
scatter3(agents(:,x),agents(:,y),agents(:,z),'filled')

% TITLE('Boid Swarm')
% xlabel('x-axis');
% ylabel('y-axis');
% zlabel('z-axis');

% Set the axes to stay with the boid swarm
x1=abs(average_position(x));
x2=x1;
y1=abs(average_position(y));
y2=y1;
z1=abs(average_position(z));
z2=z1;
axis([-x1-100 x2+100 -y1-100 y2+100 -z1-100 z2+100]); %set axis size


% set azimuth and elevation
view(azimuth,elevation)

drawnow


end
end