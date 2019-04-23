%function out = calg_x_t (x, t, funcparms)
%This function is used to calculate DAE g(x,t)= -(f(x)+B*u(t)) with given x
%and t
%%INPUT args:
%   x               - DAE: value of x
%   t               - DAE: value of t
%   funcparms       - LMSobj.AFobj
%
%OUTPUT:
%   out             - DAE: value of g(x,t)= -(f(x)+B*u(t))
%The help for this sub-function is incomplete <TODO>.
