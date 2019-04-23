function Qdepl = qDepletion(vd, MOD)
%function Qdepl = qDepletion(vd, MOD)
%	Used to calculate depletion charge. 
%	Used in diodeModSpec and EbersMoll_BJT_ModSpec


	mparms = feval(MOD.getparms, MOD);
	[ ...
		R, ...
		Is, ...
		Vt, ...
		tt, ...
		fc, ...
		d_area, ...
		cjo, ...
		phi, ...
		m ...
	] = deal(mparms{:});

	% derived parms (TODO/FIXME: these should really be done ONCE at constructor/parm-update time for speed)
	fcp = fc*phi;
	f1 = (phi/(1 - m))*(1 - (1 - fc)^m);
	f2 = (1 - fc)^(1 + m);
	f3 = 1 - fc*(1 + m);

	%{ doing it using regular if conditions for speed
  	ifcond = (vd <= fcp);
  	Qdepl = ifcond*(d_area*cjo*phi*(1 - (1 - vd/phi)^(1 - m))/(1 - m));
  	Qdepl = Qdepl + (1-ifcond)*(d_area*cjo*(f1+(1/f2)*(f3*(vd-fcp) ...
    		+(0.5*m/phi)*(vd*vd-fcp*fcp))));
	%}

	if vd <= fcp
  		Qdepl = d_area*cjo*phi*(1 - (1 - vd/phi)^(1 - m))/(1 - m);
	else
  		Qdepl = d_area*cjo*(f1+(1/f2)*(f3*(vd-fcp) + (0.5*m/phi)*(vd*vd-fcp*fcp)));
	end
end %qDepletion

