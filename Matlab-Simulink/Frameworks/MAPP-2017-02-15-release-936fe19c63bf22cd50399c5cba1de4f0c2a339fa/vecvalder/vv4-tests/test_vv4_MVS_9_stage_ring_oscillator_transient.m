function [test_passed, outcome] = test_vv4_MVS_9_stage_ring_oscillator_transient(arg_that_is_not_used)

    % This script does the following:
    %
    % 1. Simulates an MVS 9 stage ring oscillator without vv4,
    %
    % 2. Produces vv4 models of the MVS transistor, capacitor, and vsrc,
    %
    % 3. Simulates the same circuit using vv4 models,
    %
    % 4. Compares the results from Steps 1 and 3 above, and
    %
    % 5. Returns test_passed = true if the results match and false otherwise 
    %    The output outcome has 2 fields, outcome.msgSummary and 
    %    outcome.msgDetailed. The latter is always the empty string and it 
    %    exists just to conform to the MAPPtest interface. 
    %
    %    As for the former (outcome.msgSummary), if the test passed, it is the 
    %    empty string. And if the test failed, it contains some information 
    %    about how the test failed.
    
    try

        outcome.msgDetailed = '';

        % check for vv4 python dependencies
        [check_passed, check_outcome] = check_for_vv4_python_dependencies();
        if ~check_passed
            error('vv4 python dependencies not satisfied');
        end

        % check for python dependencies has passed. check_outcome.msgSummary 
        % contains the correct python command to use.
        python_cmd = check_outcome.msgSummary;

        % set basic parameters
        % disp('Defining test parameters ...')
        global MAPPbasedir;
        mapptop = MAPPbasedir;
        tstart = 0; tstep = 0.1e-11; tstop = 3e-10;
        xinit = [ 0.7094; 0.7547; 0.2760; 0.6797; 0.6551; 0.1626; 0.1190; 
                  0.4984; 0.9597; 0.3404; 0.5853; 0.2238; 0.7513; 0.2551; 
                  0.5060; 0.6991; 0.8909; 0.9593; 0.5472; 0.1386; 0.1493; 
                  0.2575; 0.8407; 0.2543; 0.8143; 0.2435; 0.9293; 0.3500; 
                  0.1966; 0.2511; 0.6160; 0.4733; 0.3517; 0.8308; 0.5853; 
                  0.5497; 0.9172; 0.2858; 0.7572; 0.7537; 0.3804; 0.5678; 
                  0.0759; 0.0540; 0.5308; 0.7792; 0.9340 ];
        abstol = 1e-9; reltol = 1e-3;
        tran_parms = defaultTranParms();
        tran_parms.trandbglvl = -1;
        LMS_methods = LMSmethods();
        LMS_method = LMS_methods.GEAR2;
        dir_name = [tempdir(), datestr(now(), 'yyyy-mmm-dd--HH-MM-SS'), '--vv4-MVS-9-stage-ring-oscillator-test'];

        % simulate a 9 stage MVS ring oscillator without vv4
        % disp('Simulating a 9 stage MVS ring oscillator without vv4 ...');
        use_vv4 = false;
        DAE_without_vv4 = MNA_EqnEngine(build_MVS_9_stage_ring_oscillator_ckt(use_vv4));
        LMSobj_without_vv4 = LMS(DAE_without_vv4, LMS_method, tran_parms);
        LMSobj_without_vv4 = feval(LMSobj_without_vv4.solve, LMSobj_without_vv4, xinit, tstart, tstep, tstop);
        tpts_without_vv4 = LMSobj_without_vv4.tpts;
        vals_without_vv4 = LMSobj_without_vv4.vals;

        % produce vv4 models of an MVS transistor, a capacitor, and a voltage 
        % source
        % disp('Creating vv4-optimized ModSpec models for an MVS transistor, a capacitor, and a voltage source ...');
        [status, console_output] = system(['mkdir ', dir_name]);
        if status ~= 0
            throw(MException('system:mkdir', 'error create temp directory'));
        end
        % already set up by setupaths_MAPP % addpath([mapptop, '/vecvalder/vv4/vv4-MATLAB']);
        % disp('Exporting DAGs for core MVS functions ...');
        export_MOD_via_vv4(MVS_1_0_1_ModSpec_ITE(), [dir_name, '/', 'MVS.dag']);
        % disp('Exporting DAGs for core capacitor functions ...');
        export_MOD_via_vv4(capModSpec(), [dir_name, '/', 'cap.dag']);
        % disp('Exporting DAGs for core voltage source functions ...');
        export_MOD_via_vv4(vsrcModSpec(), [dir_name, '/', 'vsrc.dag']);
        pyfile = [mapptop, '/vecvalder/vv4-tests/create_vv4_models_for_test_vv4_MVS_9_stage_ring_oscillator_transient.py'];
        % disp('Creating vv4-optimized ModSpec models from the DAGs above ...');
        [status, console_output] = system([python_cmd, ' ', pyfile, ' ', mapptop, ' ', dir_name]);
        if status ~= 0
            throw(MException('system:python-cmd', 'error running create_vv4_models_for_test_vv4_MVS_9_stage_ring_oscillator_transient.py'));
        end

        % simulate the same 9 stage MVS ring oscillator with vv4
        % disp('Simulating the same 9 stage MVS ring oscillator with vv4 ...');
        addpath(dir_name);
        use_vv4 = true;
        DAE_with_vv4 = MNA_EqnEngine(build_MVS_9_stage_ring_oscillator_ckt(use_vv4));
        LMSobj_with_vv4 = LMS(DAE_with_vv4, LMS_method, tran_parms);
        LMSobj_with_vv4 = feval(LMSobj_with_vv4.solve, LMSobj_with_vv4, xinit, tstart, tstep, tstop);
        tpts_with_vv4 = LMSobj_with_vv4.tpts;
        vals_with_vv4 = LMSobj_with_vv4.vals;

        % compare waveforms from both tran simulations
        % disp('Comparing waveforms from the simulations with and without vv4 ...');
        compare_parms.abstol = abstol; compare_parms.reltol = reltol;
        unk_names = feval(DAE_with_vv4.unknames, DAE_with_vv4);
        for idx = 1:1:length(xinit)
            waveform_1 = [tpts_without_vv4; vals_without_vv4(idx, :)];
            waveform_2 = [tpts_with_vv4; vals_with_vv4(idx, :)];
            [passed, info] = compare_waveforms(waveform_1, waveform_2, compare_parms);
            if passed ~= 1
                unk_name = unk_names{idx};
                % disp(sprintf('Alas, the waveforms for unk_name %s do not match! The test has FAILED!', unk_name));
                test_passed = false;
                outcome.msgSummary = sprintf('Error matching waveforms for unk_name %s: compare_waveforms returned the following message: %s', unk_name, info.msg);
                return;
            end
        end

        % disp('Yay, the waveforms match! The test has passed!');
        test_passed = true;
        outcome.msgSummary = '';

    catch err

        % disp('Oh no, there was an exception. The test has FAILED!');
        test_passed = false;

        global isOctave;
        if ~isOctave
            outcome.msgSummary = getReport(err, 'extended');
        else
            outcome.msgSummary = err.message;
        end

    end

end

function cktnetlist = build_MVS_9_stage_ring_oscillator_ckt(use_vv4)

    N = 9;

    if (use_vv4)
        MVS_MOD = MVS_vv4_test();
        cap_MOD = cap_vv4_test();
        vsrc_MOD = vsrc_vv4_test();
    else
        MVS_MOD = MVS_1_0_1_ModSpec();
        cap_MOD = capModSpec();
        vsrc_MOD = vsrcModSpec();
    end

	cktnetlist.cktname = 'MVS 9-Stage Ring Oscillator';
	cktnetlist.nodenames = {'vdd'}; % to be augmented in the for loop below
	cktnetlist.groundnodename = 'gnd';

	cktnetlist = add_element(cktnetlist, vsrc_MOD, 'Vdd', {'vdd', 'gnd'}, {}, {{'E', {'DC', 1.0}}});

	inverter = build_MVS_inverter_subckt(MVS_MOD, cap_MOD);
	inverter.terminalnames = {'in', 'out', 'vdd'};

	for c = 1:N
		cktnetlist.nodenames = {cktnetlist.nodenames{:}, sprintf('%d', c)};
		if c == 1
			cktnetlist = add_subcircuit(cktnetlist, inverter, sprintf('X%d', c),...
			{num2str(N), sprintf('%d', c), 'vdd'});
		else
			cktnetlist = add_subcircuit(cktnetlist, inverter, sprintf('X%d', c),...
			{sprintf('%d', c-1), sprintf('%d', c), 'vdd'});
		end
	end

end


function subcktnetlist = build_MVS_inverter_subckt(MVS_MOD, cap_MOD)

    subcktnetlist.cktname = 'MVS inverter';
    subcktnetlist.nodenames = {'vdd', 'in', 'out'};
    subcktnetlist.groundnodename = 'gnd';

    subcktnetlist = add_element(subcktnetlist, MVS_MOD, 'PMOS', {'vdd', 'in', 'out', 'vdd'}, ...
    {{'Type', -1}, {'W', 1.0e-4}, {'Lgdr', 32e-7}, {'dLg', 8e-7}, {'Cg', 2.57e-6}, ...
   	{'Beta', 1.8}, {'Alpha', 3.5}, {'Tjun', 300}, {'Cif', 1.38e-12}, {'Cof', 1.47e-12}, ...
   	{'phib', 1.2}, {'Gamma', 0.1}, {'mc', 0.2}, {'CTM_select', 1}, {'Rs0', 100}, ...
   	{'Rd0', 100}, {'n0', 1.68}, {'nd', 0.1}, {'vxo', 7542204}, {'Mu', 165}, {'Vt0', 0.5535}, {'delta', 0.15}});

    subcktnetlist = add_element(subcktnetlist, MVS_MOD, 'NMOS', {'out', 'in', 'gnd', 'gnd'}, ...
    {{'Type', 1}, {'W', 1e-4}, {'Lgdr', 32e-7}, {'dLg', 9e-7}, {'Cg', 2.57e-6}, ...
   	{'Beta', 1.8}, {'Alpha', 3.5}, {'Tjun', 300}, {'Cif', 1.38e-12}, {'Cof', 1.47e-12}, ...
   	{'phib', 1.2}, {'Gamma', 0.1}, {'mc', 0.2}, {'CTM_select', 1}, {'Rs0', 100}, ...
   	{'Rd0', 100}, {'n0', 1.68}, {'nd', 0.1}, {'vxo', 1.2e7}, {'Mu', 200}, {'Vt0', 0.4}, {'delta', 0.15}});

    subcktnetlist = add_element(subcktnetlist, cap_MOD, 'CL', {'out', 'gnd'}, {{'C', 3e-15}}, {});

end

