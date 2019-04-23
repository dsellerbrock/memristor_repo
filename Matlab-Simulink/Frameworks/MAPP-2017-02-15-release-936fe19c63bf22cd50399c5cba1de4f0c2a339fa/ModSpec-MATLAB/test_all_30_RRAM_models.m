do_tran = 1;
do_hom = 1;

for c = 1:5
% for d = 1:6
d=1;
	clear ckt; 
	RRAM_MOD = RRAM_v0_all_smooth(c, d);
	ckt.cktname = 'RRAM v0 test bench';
	ckt.nodenames = {'in'};
	ckt.groundnodename = 'gnd';
	tranfunc = @(t, args) args.offset+args.A*sawtooth(2*pi/args.T*t+args.phi, 0.5);
	tranargs.offset = 0; tranargs.A = 1; tranargs.T = 1e-2; tranargs.phi=0;
	ckt = add_element(ckt, vsrcModSpec(), 'Vin', ...
	   {'in', 'gnd'}, {}, {{'DC', 1}, {'TRAN', tranfunc, tranargs}});
	ckt = add_element(ckt, RRAM_MOD, 'R1', {'in', 'gnd'}, {});

	% set up DAE
	DAE = MNA_EqnEngine(ckt);

	% DC OP analysis
	dcop = dot_op(DAE, [0;0;1]);
	dcop.print(dcop); dcSol = dcop.getSolution(dcop);

	if do_tran
		% transient simulation, sweep Vin
		tstart = 0; tstep = 1e-4; tstop = 1e-2;
		xinit = [0; 0; 0];
		LMSobj = dot_transient(DAE, xinit, tstart, tstep, tstop);
		LMSobj.plot(LMSobj);
		title(sprintf('c=%d, d=%d', c, d));

		% get transient data, plot current in log scale
		[tpts, sols] = LMSobj.getSolution(LMSobj);
		figure; semilogy(sols(1,:), abs(sols(2,:)));
		xlabel('Vin (V)'); ylabel('log(current) (A)'); grid on;
		title(sprintf('c=%d, d=%d', c, d));
	end

	if do_hom
		% homotopy analysis
		startLambda = 1; stopLambda = -1; lambdaStep = -1e-2;
		hom = homotopy(DAE, 'Vin:::E', 'input', dcSol, startLambda, lambdaStep, stopLambda);
		hom.plot(hom);
		title(sprintf('c=%d, d=%d', c, d));
	end
% end % d
end % c
