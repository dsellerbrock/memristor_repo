%function QSSout = QSSsolve(firstarg, secondarg)
%This function solves DAE's QSS equations using Newton Raphson.
%INPUT args:
%If nargin == 2
%   firstarg        - initial guess for NR
%   secondarg       - QSSObj
%If nargin == 1
%   firstarg        -QSSObj
%OUTPUT:
% QSSobj.solve (function handle). Runs Newton-Raphson on the DAE's QSS equations. Use: 
%    - QSSout = feval(QSSobj.solve, QSSobj)
%      - takes NR's initial guess from DAE.QSSinitGuess
%    - QSSout = feval(QSSobj.solve, initguess, QSSobj)
%      - uses the supplied initial guess.
%The help for this sub-function is incomplete <TODO>.
