%function outstrORcell = convert2validName(instrORcell)
%
% This function converts an invalid name string to a valid MATLAB name string.
% It can also convert a cell array of invalid name strings to one with valid
% MATLAB name strings.
%
% "A valid MATLAB variable name is a character string of letters, digits, and
%  underscores, such that the first character is a letter, and the length of
%  the string is less than or equal to the value returned by the namelengthmax
%  function."
%
% Notes:
%   1) It converts each invalid character to an underscore '_';
%      convert2validName('KCL-di')  returns 'KCL_di'
%      convert2validName('a/b') returns 'a_b'
%      convert2validName('a->b')  returns 'a__b'
%   2) If instr starts with non-alphabetical char, it adds 'x' in fron of it:
%      convert2validName('1b') returns 'x1b'
%   3) TODO: It doesn't check for namelengthmax (normally 63).
%
% Arguments:
%  - instrORcell: string or cell array of strings, normally invalid names
%         containing '-', '/', '->', or begins with non-alphabetical character.
%               
% outstrORcell = matlab.lang.makeValidName(instrORcell);
%The help for this sub-function is incomplete <TODO>.
