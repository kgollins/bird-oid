function [agents,neighbors]=move_boids(agents,rules)

% Input: agents and rules
% Output: updated agent matrix
% One iteration for boid movement
% Calculate separation, cohesion, alignment
% Add them for new velocity and position vectors

% Global constants
BOIDSCONSTANTS


for t=1:inf
    
% Synchronous updates
apriori = agents;


for b=1:size(agents,1)

    
    % Calculate neighbors
    neighbors = neighborhood(apriori, b, rules(radius));
    
    % determine acceleration in both dimensions
    if isempty(neighbors)
        b_velocity=rand(1,3)-0.7;    % random velocity 
    else
    
    % Cohesion
        % Average position
        average_position=mean(apriori(neighbors, [x y z]), 1);
   
        cohesion = rules(cohesive) * (average_position - apriori(b, [x y z]));
    
    % Separation
        % Separation distances
        x_sep = apriori(b,x) - apriori(neighbors,x);
        y_sep = apriori(b,y) - apriori(neighbors,y);
        z_sep = apriori(b,z) - apriori(neighbors,z);
        square_mag = x_sep.^2 + y_sep.^2 + z_sep.^2;
        
        separation = rules(separating) * sum([x_sep./square_mag y_sep./square_mag z_sep./square_mag],1);
    
    % Alignment     
        % Average Velocity
        average_velocity = mean(apriori(neighbors,[vx vy vz]),1);
    
        alignment = rules(aligning) * (average_velocity - apriori(b, [vx vy vz]));      
    
        
    % Update velocity
    b_velocity = cohesion + separation + alignment;
    end
    
    % Update agent velocity
    agents(b, [vx vy vz]) = apriori(b, [vx vy vz]) + b_velocity;
    velocity_magnitude = sqrt(sum(agents(b, [vx vy vz]).^2));
    % Regulate speed- dont let it go above maximum allowable velocity
    agents(b, [vx vy vz]) = min(rules(vm)./velocity_magnitude,1) * agents(b, [vx vy vz]);
    
%     % Wind
%     if mod(t,10)==0
%         agents(:,x)=agents(:,x)-.2;
%         agents(:,y)=agents(:,y)-.1;
%     end
    
    % Update agent Position
    agents(b, [x y z]) = apriori(b, [x y z]) + agents(b, [vx vy vz]);
end

%update plot
update_plot(t,agents,average_position)

end
    

 
        
    
    
    


