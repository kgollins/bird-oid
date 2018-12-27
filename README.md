# Bird-Oid
Bird flocking model (boid) is a numerical study programmed in MATLAB to observe the emergent complex group behavior 
that can arise by applying simple rules to individual BOID (bird-oid object) agents. In the simplest model,
the BOIDs were set to adhere to three simple rules, which were designed to model the global behavior of bird flocks. 
Each BOID was given a randomized initial input for each rule. Depending on the initial conditions, the group was seen to 
either behave orderly (converged to group formation) or chaotic (erratic or group split).

## How-to run
The main driver for the BOID program is `run_swamp.m` Run_swamp accepts: `rules`, `nswarm` and `range_space` as inputs. The ouput is `agents`. To execute, use the following in the command line:

```Matlab
% rules: input how many species to generate
% nswarm: how many boids to start with
% range_space: x,y,z scale

[agents]=run_swarm(1,15,10); %run_swarm(rules, nswarm, range_space)
```
