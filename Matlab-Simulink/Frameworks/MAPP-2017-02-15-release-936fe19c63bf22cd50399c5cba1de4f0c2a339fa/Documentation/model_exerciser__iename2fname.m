%function outstrORcell = iename2fname(instrORcell)
%
% This function names the algebraic parts of implicit equations (KCL_xx,
% KVL_xx) by attaching 'f' at their beginning (fKCL_xx, fKVL_xx).
%
% Arguments:
%  - instrORcell: string or cell array of strings, should be valid MATLAB
%        variable/function names (returned by convert2validName).
