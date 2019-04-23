%function out = model_exerciser_func(idx, varargin, MEO)
%
% Arguments:
%  - idx: integer scalar or row vector. If it is an integer, it is the index of
%          this function in DAE outputs. If it is a 2-by-1 vector, it is the
%          index of this scalar function in doutputs_dinputs,
%  - varargin: many variables, including inputs and parms.
%               Parms are optional, and are given as parmname/parmval pairs.
%  - MEO: model exerciser object. It should have at least MEO.DAE
%              field, which is a DAE object.
%
%The help for this sub-function is incomplete <TODO>.
