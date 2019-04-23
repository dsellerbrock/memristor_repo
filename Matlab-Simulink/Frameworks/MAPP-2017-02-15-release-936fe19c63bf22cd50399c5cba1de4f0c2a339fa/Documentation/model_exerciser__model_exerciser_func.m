%function out = model_exerciser_func(funcname, idx, varargin, MEO)
%
% Arguments:
%  - funcname: string, 'fe', 'qe', 'fi', 'qi',
%                      or 'dfe_dvecX', 'dfi_dvecY', etc.
%  - idx: integer, the index of this scalar function in fe/qe/fi/qi.
%         or 2-by-1 vector, the index of this scalar function in dfe_dvecX,
%         dqe_dvecY, etc.
%  - varargin: many variables, including other IOs, internal unks, internal
%               sources and parms. They are in the following order:
%               other IOs (vecX names), internal unks (vecY names), internal
%               sources (vecU names), parms. Among them, parms are optional,
%               and are given as parmname/parmval pairs.
%  - MEO: model exerciser object. It should have at least MEO.MOD
%              field, which is a ModSpec object.
%               
%
%The help for this sub-function is incomplete <TODO>.
