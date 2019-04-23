%function [sol, iters, success] = QSSgetSolution(QSSobj)
%This function returns the solution of a completed QSS analysis.
%INPUT args:
%   QSSobj          - QSS object with complete QSS analysis solution
%
%OUTPUT:
%   sol             - the QSS solution (the state vector x of the DAE). Last NR
%                     iterate if NR unsuccessful.
%   iters           - the number of NR iterations taken to converge (or to give up).
%   success         - 1 if NR succeeded, 0 if not.
%The help for this sub-function is incomplete <TODO>.
