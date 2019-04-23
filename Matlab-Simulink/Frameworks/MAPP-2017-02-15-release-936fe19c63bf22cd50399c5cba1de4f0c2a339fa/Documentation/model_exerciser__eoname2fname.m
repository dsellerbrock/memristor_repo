%function outstrORcell = eoname2fname(instrORcell)
%
% This function converts explicit output names for electrical models (vxx, ixx)
% to their corresponding function names (Vxx, Ixx).
%
% Arguments:
%  - instrORcell: string or cell array of strings, usually explicit output
%        names of electrical models (vxx, ixx), should be valid MATLAB
%        variable/function names (returned by convert2validName).
