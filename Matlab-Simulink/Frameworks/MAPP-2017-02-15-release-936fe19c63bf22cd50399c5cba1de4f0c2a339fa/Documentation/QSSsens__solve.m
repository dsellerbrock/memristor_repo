%function ObjOut = solve(stateoutputs, adjoint, QSSsensobj)
%This function runs noise analysis on a QSS sensitivity analyis object
%INPUT args:
%    stateoutputs        - if present and not [], compute PSDs of the outputs
%                          specified; otherwise, compute PSDs of DAE-specified
%                          outputs
%    adjoint             - if present and == 1, run adjoint noise analysis. 
%                          if absent or == 0, run direct noise analysis.
%   QSSsensobj          - QSS sensitivity analysis object
%
%OUTPUT:
%   ObjOut              - QSS sensitivity analysis object with sensitivity
%                         analysis solution
