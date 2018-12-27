function [agents]=initialize_agents(nswarm,range_space,rules)
    % nswarm is the initial number of boids

    % Get the agent matrix constants
    BOIDSCONSTANTS
    
    % Create a 1 x nswarm matrix to initialize agents
    agents(:,1)=ones(nswarm,1);

    %assign initial location
    agents(:,[x y z])=rand(nswarm,3).*range_space-range_space/2;
    
    %assign velocity in x,y,z directions
    agents(:,vx)=(10+10.*rand(nswarm,1))*rules(:,vm).*sign(randn(nswarm,1));
    agents(:,vy)=(10+10.*rand(nswarm,1))*rules(:,vm).*sign(randn(nswarm,1));
    agents(:,vz)=(10+10.*rand(nswarm,1))*rules(:,vm).*sign(randn(nswarm,1));
    
       
end
