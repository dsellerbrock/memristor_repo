%function LTISSSprint(LTISSSobj, stateoutputs)
%
%Prints the LTISSS solution as a table. (This is a private function of LTISSS,
%but is accessible via LTISSSobj.print).
%
%Arguments:
% - LTISSSobj: the LTISSS object (help LTISSS). LTISSSobj.solve() should have
%              been run.
% - stateoutputs: (optional) should be a structure of the format returned
%                 by StateOutputs(DAE). If not specified, the DAE's defined
%                 outputs (via C and D) are printed.
%
%Examples
%--------
%
% feval(LTISSSobj.print, LTISSSobj);
% feval(LTISSSobj.print, LTISSSobj, StateOutputs(DAE));
%
%The help for this sub-function is incomplete <TODO>.
