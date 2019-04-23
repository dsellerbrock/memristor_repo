%function LMSobjOUT = LMStimestepping(LMSobj, xinitcond, tstart, tstep, tstop,
%                                store_Jacobians)
%(this is a private function of LMS, but can be accessed as LMSobj.solve)
%LMStimeStepping runs time-stepping DAE/ODE solution on LMSobj.
%
%Arguments:
%  - LMSobj: the LMS structure/object
%  - xinitcond: initial condition for the time-stepping solution.
%        Note: consistency of the initial condition for DAEs is not
%        checked. Depending on the integration method used,
%        inconsistent initial conditions can result in completely
%        erroneous or non-useful simulations. (In particular, watch out
%        for TRAP). If you cannot ensure easily consistency of the
%        initial condition, it is recommended that you first run a few
%        small timesteps of an overdamped p=1 method (such as BE), then
%        follow with other integration methods.
%  - tstart: start time for the simulation.
%  - tstop: stop time for the simulation. 
%  - tstep: initial time-step for the simulation. Can change if timestep
%        control is enabled (see defaultTranParms).
%  - store_Jacobians (optional argument): valid values are 1 and 0 (default 0).
%        if set to 1, time stepping will store the DAE's Jacobians at each
%        timestep. These Jacobians can be accessed via LMSobj.getSolution().
%
%Outputs:
%  - LMSobjOUT: updated LMS object containing the time-stepping solution (if
%        successful). The solution can be accessed via
%        LMSobj.getSolution() and plotted using LMSobj.plot().
%
%Examples
%--------
%    % assuming LMSobj already set up; help LMS for an example
%     xinit = 1; tstart = 0; tstep = 10e-6; tstop = 5e-3;
%     LMSobj = feval(LMSobj.solve, LMSobj, xinit, tstart, tstep, tstop);
%    feval(LMSobj.plot, LMSobj);
%    [tpts, vals] = feval(LMSobj.getsolution, LMSobj);
%
%See also
%--------
%  LMS, defaultTranParms (in particular: timestep control, stop function and 
%                   corrector function options).
%
%
%
