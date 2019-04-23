function [test_passed, outcome] = check_for_vv4_python_dependencies(arg_that_is_not_used)

    outcome.msgDetailed = '';

    % checking for dependencies: try various python commands until one of 
    % them clicks or all of them fail
    python_cmds = {'python', 'python3', 'python3.4', 'python3.5', 'python3.6'};
    for idx = 1:1:length(python_cmds)
        cmd = python_cmds{idx};
        passed = check_for_vv4_python_dependencies_using_cmd(cmd);
        if passed
            test_passed = true;
            outcome.msgSummary = cmd;
            return;
        end
    end

    test_passed = false;
    outcome.msgSummary = 'None of the python commands worked. This test has FAILED!';

end

function passed = check_for_vv4_python_dependencies_using_cmd(python_cmd)

    try

        % set basic parameters
        global MAPPbasedir;
        mapptop = MAPPbasedir;
        pyfile = [mapptop, '/vecvalder/vv4-tests/check_for_vv4_python_dependencies.py'];

        % run the python file checking for dependencies 
        % disp(sprintf('Checking for vv4 python dependencies using python command "%s" ...', python_cmd))
        [status, console_output] = system([python_cmd, ' ', pyfile]);

        if status ~= 0
            % something went wrong in the above system call
            throw(MException('system_call_gone_wrong', ''));
        end

        % nothing went wrong in the above system call, and no assertion in the 
        % python script was violated
        passed = true;

    catch

        % disp('Oh no, there was an exception. One or more dependencies may be missing in this version of python.');
        passed = false;

    end

end

