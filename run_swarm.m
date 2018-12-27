function [agents]= run_swarm(rules,nswarm,range_space)
% rules: input how many species to generate
% nswarm: how many boids to start with
% range_space: x,y,z scale
%
% example: [agents]=run_swarm(1,15,100)
clc
close all


% initialize global consants
    initialize_constants 

% Generate random rules 
    maxes=ranges(ones(rules,1),:); 
    rules=rand(rules,5).*maxes; 
    
% Initialize the position and velocity vectors
    agents=initialize_agents(nswarm,range_space,rules);
    
    
% Move all boids to new positions
    [agents]=move_boids(agents,rules);