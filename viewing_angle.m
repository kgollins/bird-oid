%Calculates the viewing angle using the dot prodct formula

function [neighbors] = viewing_angle(agents,b,neighbor)

% use the dot product to find if the neighbors are within
% viewing range

BOIDSCONSTANTS
neighbors=[];

for n=1:size(neighbor,1)
    
top= (agents(b,vx)*agents(neighbor(n),x)) + (agents(b,vy)*agents(neighbor(n),y)) + (agents(b,vz)*agents(neighbor(n),z));
bottom = sqrt(agents(b,vx).^2 + agents(b,vy).^2 + agents(b,vz).^2) + sqrt(agents(neighbor(n),x).^2 + agents(neighbor(n),y).^2 +agents(neighbor(n),z).^2);

theta_compare = norm(acos(top./bottom));


if (theta_compare <=  theta)
    neighbors=[neighbors neighbor(n)];
end

end



