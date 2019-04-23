%function out = GEAR2ddtApproxATtn(last_3_ts, last_3_xs)
%This function approximates ddt(x) for GEAR2-based LMS method.  It relies on
%the fact that for GEAR, only \beta0 is non-zero and all the other betas are 0.
%INPUT args:
%   last_3_ts       - three consecutive times steps (1x3 sized array)
%   last_3_xs       - three consecutive xs (1x3 sized array)
%
%OUTPUT:
%   out             - ddt(x) approximation
%The help for this sub-function is incomplete <TODO>.
