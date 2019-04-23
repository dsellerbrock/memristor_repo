%function model_exerciser_plot(funcname, varargin, MEO)
%
% Arguments:
%  - funcname: string, name of the function to plot. 
%  - varargin: many variables, including other IOs, internal unks, internal
%               sources and parms. They are in the following order:
%               other IOs (vecX names), internal unks (vecY names), internal
%               sources (vecU names), parms. Among them, parms are optional,
%               and are given as parmname/parmval pairs.
%  - MEO: model exerciser object. It should have at least MEO.MOD
%              field, which is a ModSpec object.
%
%The help for this sub-function is incomplete <TODO>.
