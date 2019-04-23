%function [cee, gee, geeu] = jacobians(t, x, DAE)
%This function provides various Jacobian matrices for a given DAE
%The assumed form of DAE is:
%            d/dt q(x) + f(x, u(t)) = 0 (case 1),
%or
%            d/dt q(x) + f(x) + B*u(t) = 0 (case 2).
%INPUT args:
%   x           - DAE unknowns (vector)
%   t           - time
%   DAE         - circuit DAE
%OUTPUTS:
%   cee         - dq_dx(x)
%   gee         - df_dx(x,u) (case 1) or  df_dx(x) (case 2)
%   geeu        - df_du(x,u) (case 1) or B (case 2)
%The help for this sub-function is incomplete <TODO>.
