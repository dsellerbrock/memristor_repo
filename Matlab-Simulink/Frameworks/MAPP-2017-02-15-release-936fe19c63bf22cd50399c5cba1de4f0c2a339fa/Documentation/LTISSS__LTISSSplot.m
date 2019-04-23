%function [ofigh, olegends, oclrindex] = LTISSSplot(LTISSSobj, stateoutputs, ...
%                lgndprefix, linetype, figh, legends, clrindex)
%    or
%function [ofigh, olegends, oclrindex] = LTISSSplot(LTISSSobj, ...
%                'optionName1', optionVal1, 'optionName2', optionVal2, ...)
%
%produces AC analysis plots by calling freqDomainMagPhasePlot(...) after 
%argument processing. (This is a private function of LTISSS, but is accessible
%via LTISSSobj.plot.)
%
%Arguments:
% - LTISSSobj:    An LTISSS object. See help LTISSS.
%
% In the first calling syntax:
%
% - stateoutputs: (optional) a structure/object with the format of 
%                 StateOutputs(DAE) - see help StateOutputs. If not specified,
%                 or set to [], the DAE's defined outputs (y = C*x + D*u) are
%                 plotted. If specified, the selected state variables of the
%                 DAE are plotted. To plot all state variables, set it to
%                 StateOutputs(DAE).
%
% - lgndprefix:   (optional) a (typically short) string that is pre-pended
%                 to all legends. defaults to '' if unspecified or set to [].
%                 Useful when overlaying different data for the same DAE
%                 waveform.
%
% - linetype:     (optional) string indicating the line type for MATLAB's plot
%                 command - see help plot. Defaults to '.-' if not specified or
%                 set to [].
%
% - figh:         (optional) figure handle for a plot to be used. If not
%                 specified, a new plot is created. Typical use is with ofigh
%                 returned by a previous call to transientPlot.
%
% - legends:      (optional) a cell array of strings to be used as legends
%                 for existing waveforms on a previous plot with figure handle
%                 figh. Typical use is to set to olegends from a previous call
%                 of transientPlot. Should be specified if figh is specified,
%                 otherwise the legends on the plot will be wrong.
%
% - clrindex:     (optional) an integer representing the index of the colour
%                 of the first waveform. Defaults to 0 if not specified or set
%                 to [].  Used as argument to getcolorfromindex() to cycle
%                 through different colors for different waveforms. Typical use
%                 is to set to oclrindex from a previous call of transientPlot.
%
% - magplottype:  (optional) a (case-insensitive) string that determines how 
%                 the magnitude will be plotted:
%                 - 'log10': plot log10(magnitude). This is the default.
%                 - 'linear' or 'lin': plot just the magnitude.
%                 - '10log10' or 'pwrdB' or 'pdB': plot 10*log10(magnitude)
%                   - 'dB' implies '10log10'; a warning will be printed
%                 - '20log10' or 'magdB' or 'vdB': plot 20*log10(magnitude)
%    
% In the second calling syntax:
%
% Optional comma-separated pairs of optionName-optionVal arguments:
%
% - optionName: string, must be specified inside single quotes (' ').
%       Available optionNames (case-insensitive):
%          'stateoutputs'
%          'lgndprefix' or 'prefix'
%          'linetype' or 'linestyle'
%          'figh' or 'fighandle'
%          'legends'
%          'clrindex'
%          'magplottype'
% - optionVal: corresponding value for optionName, see the first calling syntax
%              for the description of available values for each optionName.
%
% You can specify several name and value pair arguments in
% any order as optionName1, optionVal1, ..., optionNameN, optionValN.
%
% Example: 'linetype', '-o', 'stateoutputs', StateOutput
%
%
%Outputs:
% - ofigh:     figure handle of the plot. Can be passed (optionally) to a
%              future call to transientPlot().
%
% - olegends:  cell array of strings, suitable for using as argument to
%              Matlab's legend() function. Can be passed (optionally) to a
%              future call to transientPlot().
%
% - oclrindex: an integer representing the index of the last colour used in
%           the current plot. Mainly useful for passing (optionally) to a
%           future call to transientPlot.
%
%Examples
%--------
%
% %%%%% set up two DAEs: 1-segment and 3-segment RC lines
% R = 1e3; C = 1e-6;
% DAE1 =  RClineDAEAPIv6('', 1, R, C);
% DAE3 =  RClineDAEAPIv6('', 3, R, C);
% 
% %%%%% compute QSS (DC) solutions
% uDC = 1; 
% DAE1 = feval(DAE1.set_uQSS, uDC, DAE1);
% DAE3 = feval(DAE3.set_uQSS, uDC, DAE3);
% qss1 = QSS(DAE1); qss1 = feval(qss1.solve, qss1);
% qss3 = QSS(DAE3); qss3 = feval(qss3.solve, qss3);
% qss1Sol = feval(qss1.getSolution, qss1);
% qss3Sol = feval(qss3.getSolution, qss3);
%
% % set AC analysis input as a function of frequency
% Ufargs.string = 'no args used';; % 
% Uffunc = @(f, args) 1; % constant U(j 2 pi f) \equiv 1
% DAE1 = feval(DAE1.set_uLTISSS, Uffunc, Ufargs, DAE1);
% DAE3 = feval(DAE3.set_uLTISSS, Uffunc, Ufargs, DAE3);
% 
% % AC analyses
% acobj1 = LTISSS(DAE1, qss1Sol, uDC);
% acobj3 = LTISSS(DAE3, qss3Sol, uDC);
% sweeptype = 'DEC'; fstart=1; fstop=1e3; nsteps=10;
% acobj1 = feval(acobj1.solve, fstart, fstop, nsteps, sweeptype, acobj1);
% acobj3 = feval(acobj3.solve, fstart, fstop, nsteps, sweeptype, acobj3);
% %
% % plot frequency sweep for acobj1 - DAE-defined outputs
% [figh, legends, clrindex] = feval(acobj1.plot, acobj1, [], ...
%                '1-segment RC', 'o-');
% % overlay frequency sweep for acobj3 - DAE-defined outputs
% [figh, legends, clrindex] = feval(acobj3.plot, acobj3, [], ...
%                '3-segment RC', '.-', figh, legends, clrindex);
% % overlay frequency sweep for acobj1 - all state variables
% sos3 = StateOutputs(DAE3);
% [figh, legends, clrindex] = feval(acobj3.plot, acobj3, sos3, ...
%                '3-segment RC', 'x-', figh, legends, clrindex);
%
% % plot again using the second calling syntax, in "voltage dB" (20*log10(mag))
% % plot frequency sweep for acobj1 - DAE-defined outputs
% [figh, legends, clrindex] = feval(acobj1.plot, acobj1, ...
%                'magplottype', 'vdb', 'lgndprefix', '1-segment RC', ...
%                'linetype', 'o-');
% % overlay frequency sweep for acobj3 - DAE-defined outputs
% [figh, legends, clrindex] = feval(acobj3.plot, acobj3, ...
%                'magplottype', 'vdb', ...
%                'lgndprefix', '3-segment RC', 'linetype', '.-', ...
%                'figh', figh, 'legends', legends, 'clrindex', clrindex);
% % overlay frequency sweep for acobj1 - all state variables
% sos3 = StateOutputs(DAE3);
% [figh, legends, clrindex] = feval(acobj3.plot, acobj3, ... 
%                'magplottype', 'vdb', ...
%                'stateoutputs', sos3, ...
%                'lgndprefix', '3-segment RC', 'linetype', 'x-', ...
%                'figh', figh, 'legends', legends, 'clrindex', clrindex);
%
%See also
%--------
%
% freqDomainMagPhasePlot, LTISSS
%
%The help for this sub-function is incomplete <TODO>.
