function [neighbors]= neighborhood(agents,b,radius)

% Input: agents, b agents, and radius rule
% Output: neighbors, if any
%
% Calculates the difference between two points in three dimensional space
% Returns a neighbor if within the radius and if it is in view
% Wont let me initialize constants???

% Find Distance between point (x,y,z)
distances=sqrt((agents(:,1)-agents(b,1)).^2 + (agents(:,2)-agents(b,2)).^2 + (agents(:,3)-agents(b,3)).^2);

% Determine if within radius
neighbors = setdiff(find(distances<=radius),b);

% Determine if in range
neighbors = viewing_angle(agents,b,neighbors);
    


