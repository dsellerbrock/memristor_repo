%function LMSout = LMSupdateDAE(DAE, LMSobj)
%(this is a private function of LMS, but can be accessed via LMSobj.updateDAE)
%Updates LMSobj.DAE with the DAE argument, returns the updated LMS object.
%Useful if you have, eg, changed a parameter or input in the DAE.
%
%Example
%-------
%    % set transient input to the DAE
%    utargs.A = 1; utargs.f=1e3; utargs.phi=0;
%    utfunc = @(t, args) args.A*sin(2*pi*args.f*t + args.phi);
%    DAE = feval(DAE.set_utransient, utfunc, utargs, DAE);
%    LMSobj  = feval(LMSobj.updateDAE, DAE, LMSobj);
%
%The help for this sub-function is incomplete <TODO>.
