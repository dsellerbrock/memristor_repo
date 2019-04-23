%function ObjOut = LTISSSsolve(fstart, fstop, nsteps, sweeptype, adjoint, ...
%                                     LTISSSobj)
%(this is a private function of LTISSS but can be accessed as LTISSSobj.solve)
%LTISSSsolve runs a frequency-sweeping LTISSS analysis on LTISSSobj.
%
%Arguments:
%  - fstart:    start frequency for the LTISSS/AC sweep.
%  - fstop:     stop frequency for the LTISSS/AC sweep.
%  - nsteps:    number of frequency steps to take (per decade if 
%               sweeptype=='DEC'; if sweeptype=='LIN', then the total number
%               of steps).
%  - sweeptype: a string: 'LIN' (for a linear frequency sweep)
%               or 'DEC' (for logarithmically spaced frequency points). 'DEC'
%            is typically preferred for Bode plots.
%  - adjoint:   (optional) either 0 or 1 (default 0). If 1, performs adjoint
%               calculations; if 0, does direct calculations.
%               TODO: further documentation of what adjoint==1 does precisely.
%  - LTISSSobj: the LTISSS structure/object
%
%Outputs:
%  - ObjOut: updated LTISSS object containing the LTISSS/AC solution.
%        The solution can be accessed via ObjOut.getsolution(),
%        ObjOut.plot() and ObjOut.print(). See: LTISSS,
%        LTISSS::LTISSSplot, LTISSS::print, LTISSS::LTISSSgetSolution.
%
%Examples
%--------
% % assuming acobj already set up by calling LTISSS (see help LTISSS)
% sweeptype = 'DEC'; fstart=1; fstop=1e3; nsteps=10;
% acobj = feval(acobj.solve, fstart, fstop, nsteps, sweeptype, acobj);
% %
% % plot frequency sweeps of system outputs (overlay all on 1 plot)
% feval(acobj.plot, acobj);
% % plot frequency sweeps of state variable outputs (overlay on 1 plot)
% feval(acobj.plot, acobj, stateoutputs);
% %print the solution for the DAE's defined outputs (via C and D)
% feval(acobj.print, acobj);
% %get solution data
% [freqs, vals] = feval(acobj.getsolution, acobj);
%
%See also
%--------
%  LTISSS
%
%
