%function outstrORcell = iename2qname(instrORcell)
%
% This function names the differential (d/dt) parts of implicit equations
% (KCL_xx, KVL_xx) by attaching 'q' at their beginning (qKCL_xx, qKVL_xx).
%
% Arguments:
%  - instrORcell: string or cell array of strings, should be valid MATLAB
%        variable/function names (returned by convert2validName).
