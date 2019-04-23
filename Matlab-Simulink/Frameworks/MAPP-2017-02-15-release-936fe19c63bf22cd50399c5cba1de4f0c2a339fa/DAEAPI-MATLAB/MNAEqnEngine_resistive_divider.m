%
%
% DAE representation of a circuit with voltage source and resistive divider
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The Circuit: 
%	- voltage source and resistive divider
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%
%see DAEAPIv6_doc.m for a description of the functions here.
%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Type "help MAPPlicense" at the MATLAB/Octave prompt to see the license      %
%% for this software.                                                          %
%% Copyright (C) 2008-2013 Jaijeet Roychowdhury <jr@berkeley.edu>. All rights  %
%% reserved.                                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





%author: J. Roychowdhury, 2012/05/01-08
%

	%{ 
	SPICE netlist for this circuit
	------------------------------
	gnd-vsrc-n1-R1-n2-R2-gnd

	vsrc 1 0 1V
	r1 1 2 100
	r2 2 0 100
	------------------------------
	%}

	% ckt name
	cktname = 'gnd-vsrc-n1-R1-n2-R2-gnd';

	% nodes (names)
	nodes = {'1', '2'};
	ground = '0';

	% list of elements 
	vM = vsrcModSpec('vsrc');
	v_udata1.uname = 'E';
	v_udata1.QSSval = 1.0;
	utargs.A = 1; utargs.f=1e3; utargs.phi=0;
	utfunc = @(t, args) args.A*sin(2*pi*args.f*t + args.phi);
	v_udata1.utransientargs = utargs;
	v_udata1.utransient = utfunc;


	r1M = resModSpec('r1'); 
	r2M = resModSpec('r2'); 

	% element node connectivities
	vnodes = {'1', ground}; % p, n
	r1nodes = {'1', '2'}; % p, n
	r2nodes = {ground, '2'}; % p, n

	vElement.name = 'v1'; vElement.model = vM; 
		vElement.nodes = vnodes; vElement.parms = {};
		vElement.udata = {v_udata1};
	r1Element.name = 'r1'; r1Element.model = r1M; 
		r1Element.nodes = r1nodes; r1Element.parms = {100};
	r2Element.name = 'r2'; r2Element.model = r2M; 
		r2Element.nodes = r2nodes; r2Element.parms = {100};


	% set up circuitdata structure containing all the above
	% contains: nodenames, groundnodename(s), elements
	% each element contains: name, ModSpecModel, nodes, parms
	circuitdata.cktname = cktname; % all non-ground nodes
	circuitdata.nodenames = nodes; % all non-ground nodes
	circuitdata.groundnodename = ground;
	circuitdata.elements = {vElement, r1Element, r2Element};

	% set up and return a DAE of the MNA equations for the circuit
	DAE = MNA_EqnEngine('vsrc-R-R', circuitdata);

