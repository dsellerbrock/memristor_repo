%function [tpts, vals, jacobians] = transient_getsolution(transobj)
%This function provides solutions from a successful transient run.
%
%Arguments:
%   transobj    - LMS structure/object.
%
%Outputs:
%   tpts        - time steps (row vector of size number of time steps)
%   vals        - vals is a matrix of transient solution values. Each column
%                 is the solution at a timepoint. Eg, vals(:,i) returns the
%                 solution at the ith timepoint. The number of rows equals
%                 the number of DAE unknowns.
%   jacobians   - structure with the following fields (output meaningful 
%                 only if LMS::LMStimeStepping has been run with Jacobian
%                 storage options):
%         .Cs     - cell array containing dq_dx at each timepoint. 
%                   Ie, Cs{i} is a (sparse) matrix representing dq_dx @ x=x(t_i)
%         .Gs     - cell array containing df_dx at each timepoint.
%         .Gus    - cell array containing df_du at each timepoint.
%
%The help for this sub-function is incomplete <TODO>.
