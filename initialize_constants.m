%Initialize constants
%
%Kenneth Gollins
%cs302

BOIDSCONSTANTS

x=1;  %x-position
y=2;  %y-position
z=3;  %z-position
vx=4; %x-velocity 
vy=5; %y-velocity
vz=6; %z-velocity
 
radius=1;      % local neighborhood radius
vm=2;          % max velocity
cohesive=3;    % cohesive force
aligning=4;    % aligning force
separating=5;  % separating force

theta=  3.6652;      % viewing angle 3.6652 radians = 210degrees

% maximum ranges for the 6 rule columns
ranges=[300 20 1 1 100]; 