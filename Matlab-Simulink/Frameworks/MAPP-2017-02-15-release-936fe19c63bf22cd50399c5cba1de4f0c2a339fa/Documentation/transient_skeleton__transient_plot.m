%function [figh, legends, colindex] = transient_plot(transobj, ...)
%Plots the result of a transient simulation.
%
%Note: this function calls transientPlot(...) to do the real work. 
%help transientPlot for more information.
%
%Arguments:
% - transobj: structure/object conforming to transient_skeleton and with
%             valid data in transobj.tpts and transobj.vals to plot
% - ...:      (optional) arguments to be passed to transientPlot().
%             This routine calls transientPlot() as follows:
%               transientPlot(DAE, tpts, vals, time_units, ...),
%             where DAE, tpts, vals, and time_units are derived from transobj.
%             Any further arguments ... should be exactly as supported
%             by transientPlot - help transientPlot for more information.
%
%Outputs:
% - figh:     figure handle of the plot. Can be passed (optionally) to a
%             future call to transient_plot(). See help transientPlot.
% - legends:  cell array of strings, suitable for using as argument to
%             Matlab's legend() function. Can be passed (optionally) to a future
%             call to transient_plot(). See help transientPlot.
% - colindex: an integer representing the index of the last colour used in
%             the current plot. Mainly useful for passing (optionally) to a
%             future call to transient_plot(). See help transientPlot.
%The help for this sub-function is incomplete <TODO>.
