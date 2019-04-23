function [varargout]  = MAPPtest(varargin)
%function testResults = MAPPtest(testsToRun, compareUpdateOrShowresults)
%
%This is an in-depth introduction to MAPPtest. For a gentle introduction that
%covers just the basic concepts and usage, please run help MAPPtesting.
%
%Input arguments
%---------------
%
%   testsToRun: (optional)
%
%       a cell array that contains tests to be run by MAPPtest. Each
%       test is a structure - see newMAPPtest_example.m (type or edit it,
%       it has no documentation at present [TODO]) to understand how to
%       write one. If not specified, all internally defined tests will be run.
%       Refer to allMAPPtests.m to see a complete list of these tests. It is
%       OK to have only one test structure as this argument - you need not
%       enclose it in a cell array.
%
%   compareUpdateOrShowresults: (optional)
%
%       a string that can take one of three values: 
%
%       - 'compare' (the default if no second argument). In 'compare'
%                   mode, MAPPtest runs test simulations and compares the 
%                   results against previously stored reference data. 
%       - 'showresults': Shows you plots or printed results from running the
%                   tests. Essential for checking if your test is meaningful
%                   or not.
%       - 'update': If you want to update the reference data used
%                   by compare (eg, if you have changed the test), use 
%                   'update'. IMPORTANT: Please make sure you check the
%                   simulation data manually for correctness, using
%                   'showresults', before using 'update' -- the old reference
%                   data will be overwritten.
%
%How to add new test
%-------------------
%   
%   Here is the procedure for adding a new test to MAPPtest.
%   
%   - Set up test struct 
%     Write a script that builds test struct for the new test. The struct
%     contains information necessary to run MAPPtest, such as DAE, analysis
%     type, etc. Please refer to newMAPPtest_example.m [TODO] (and any other
%     MAPPtest_<test-name>.m) as a template to set up the test struct. 
%     Please name your new test script starting with MAPPtest_. For example,
%     MAPPtest_my_new_test_myckt_transient.m.
%   
%   - Run MAPPtest on your test with 2nd argument 'showresults':
%     - MAPPtest(MAPPtest_my_new_test_myckt_transient, 'showresults');
%     - look at the printed/plotted values and make sure they look OK.
%
%   - Save reference data
%     Run MAPPtest in 'update' mode on the new test.
%
%   	myMAPPtest = MAPPtest_my_new_test_myckt_transient;
%   	MAPPtest(newMAPPtest, 'update');
%
%     Simulation results will be saved in the default test-data directory:
%       <PATH_TO_MAPP>/Analyses1-on-DAEAPI/test-data/
%   
%   - Include the new test into MAPPtest groups
%     Append the entry of the newly defined test to allMAPPtests.m. To add the
%     new test to a certain group, assign the corresponding group tag to the
%     test. (See the next section).
%   
%   - Check your newly added test by running
%
%       alltests = allMAPPtests('<group-tag>');
%   	MAPPtest(alltests);
%
%     to test if the new test has been added successfully.
%
%Organizing MAPPtests in groups 
%------------------------------
%
%   All available tests are organized in groups for different purposes. Eg,
%   allMAPPtests_{TRAN,DC,AC}.m classifies the tests by simulation type, and
%   allMAPPtests_MNAEqnEngine.m returns a group of tests that check the
%   correctness of the MNA equation engine, etc. Currently available groups can
%   be found in allMAPPtests.m. You could also create your own test groups.
%
%   Each test can belong to several groups, eg, MAPPtest_charge_pump_DC.m
%   belongs to both "quick" and "DC" group. Adding a test to a group can be done
%   by assigning the group tag to the test. See allMAPPtests.m for examples.
%
%See also
%--------
%
%   MAPPtest_transient, MAPPtest_DCSweep, MAPPtest_AC, defaultMAPPtests,
%   newMAPPtest_example[TODO], allMAPPtests, MAPPtesting
%

%Changelog:
%- 2015/01/14: JR: added support for 'showresults' and a single test not
%              enclosed in a cell array.  Updates to the help text, as well.
%- original presumably written by Mohanty or Bichen - they did not bother
%  to put in an Author line.

% create variable to save testResults
testResults = {};
if nargin == 2 
%    if isa(varargin{1},'function_handle')
    if isa(varargin{1},'cell')
        allTests = varargin{1};
    elseif isa(varargin{1},'struct')
        allTests = {varargin{1}};
    else
        disp('Wrong value for input argument 1');
        help('MAPPtest');
        return; % abort
    end
    if ~strcmp(varargin{2},'compare') && ~strcmp(varargin{2},'update') ...
                                        && ~strcmp(varargin{2},'showresults')
        disp('Wrong value for input argument 2');
        help('MAPPtest');
        return; % abort
    else
        updateCompareOrShowresults = varargin{2};
    end
elseif nargin == 1
    if isa(varargin{1},'cell')
        allTests = varargin{1};
        updateCompareOrShowresults = 'compare';
    elseif isa(varargin{1},'struct')
        allTests = {varargin{1}};
        updateCompareOrShowresults = 'compare';
    else
        if ~strcmp(varargin{1},'compare') && ~strcmp(varargin{1},'update') ...
                                        && ~strcmp(varargin{2},'showresults')
            disp('Wrong value for input argument');
            help('MAPPtest');
            return; % abort
        else
            updateCompareOrShowresults = varargin{1};
            allTests = defaultMAPPtests; 
        end
    end
elseif nargin == 0
    allTests = defaultMAPPtests;
    updateCompareOrShowresults = 'compare';
else
    % incorrect number of arguments
    disp('Wrong number of arguments.');
    help('MAPPtest');
    return; % abort
end

% generate the tests 
more off;

% run the appropriate MAPPtest for all the tests in allTests
T_record = zeros(length(allTests),1);
nFailedTest = 0;
failedTestList = {};
failedTestMsgList = {};
for count = 1:1:length(allTests)
	tic;
    if ~isfield(allTests{count},'whereToSaveData') && strcmp(updateCompareOrShowresults,'update')
        allTests{count}.whereToSaveData='/home/jr/unison/code/newSPICE++/MAPP-git/hagrid-MAPP/Analyses1-on-DAEAPI/test-data';
    end
    fprintf('\n===============================================================================\n\n');
    fprintf('Running test ''%s'' (%d/%d)\n\n',allTests{count}.name, count, length(allTests));
    if strcmpi(allTests{count}.analysis,'AC')
        [successOrFailure,testOutcome] = MAPPtest_AC(allTests{count},updateCompareOrShowresults);
    elseif strcmpi(allTests{count}.analysis,'DCSweep')
        [successOrFailure,testOutcome] = MAPPtest_DCSweep(allTests{count},updateCompareOrShowresults);
    elseif strcmpi(allTests{count}.analysis,'transient')
        [successOrFailure,testOutcome] = MAPPtest_transient(allTests{count},updateCompareOrShowresults);
    elseif strcmpi(allTests{count}.analysis,'external')
        [successOrFailure,testOutcome] = eval(sprintf('%s(updateCompareOrShowresults);', allTests{count}.scriptname));
    else
        %disp('');
        fprintf(2, '\tWARNING: analysis type %s not supported: ignoring this test\n\n', allTests{count}.analysis);
        return;
    end
	tstop = toc;
	T_record(count) = tstop;

    if nargout > 0

        testOutcome.successOrFailure = successOrFailure;
        testResults = {testResults{:}, testOutcome};

    elseif ~strcmp(updateCompareOrShowresults, 'showresults');

        if successOrFailure > 0.5
            passfailstr = 'pass';
        else
            passfailstr = 'FAIL';
            nFailedTest = nFailedTest + 1;
            failedTestList = {failedTestList{:},allTests{count}.name};
            failedTestMsgList = {failedTestMsgList{:},testOutcome.msgSummary};
        end

        if strcmpi(allTests{count}.analysis,'external')
			str1 = [allTests{count}.name, ' (external test)'];
		else
			str1 = [feval(allTests{count}.DAE.daename,allTests{count}.DAE), ' (', allTests{count}.analysis , ')'];
		end

        if length(str1) <= 70
            fprintf(1, [str1, ' ', repmat('.', 1, 79 - 6 - length(str1)), ' ', passfailstr, '\n']);
        else
            fprintf(1, [str1, ' ... ', passfailstr, '\n']);
        end

        if successOrFailure < 0.5
            fprintf(1,[testOutcome.msgSummary, '\n']);
            if length(testOutcome.msgDetailed) > 0
                fprintf(1,[testOutcome.msgDetailed, '\n']);
            end
        end
    end % if nargout > 0
	fprintf(1, 'CPU time : %1.5gs\n', tstop);
    if strcmp(updateCompareOrShowresults, 'showresults') && count < length(allTests)
	    fprintf(2, 'Pausing for 5 seconds before moving to next test\n');
        pause(5); close all;
    end
end %for count = 1:1:length(allTests)

fprintf('\n===============================================================================\n\n');

if ~strcmp(updateCompareOrShowresults, 'showresults')
    fprintf('MAPPtest summary: ')
    if nFailedTest > 0
        fprintf(1, 'FAILED: %d test(s) out of %d.\n', nFailedTest, length(allTests));
        fprintf(1, '  Failed test(s):\n');
        for i=1:length(failedTestList)
            fprintf(1, '    %s:\n        %s\n', failedTestList{i}, failedTestMsgList{i});
        end
        fprintf(1, '\n');
    else
        fprintf(1, 'all %d tests passed.\n\n', length(allTests));
    end
end
fprintf(1, 'Total CPU time: %1.5gs\n\n', sum(T_record));

if nargout == 1
    varargout{1} = testResults;
end
