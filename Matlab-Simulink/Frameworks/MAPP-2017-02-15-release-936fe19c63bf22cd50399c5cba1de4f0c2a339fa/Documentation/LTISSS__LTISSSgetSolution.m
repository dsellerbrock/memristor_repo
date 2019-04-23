%function [freqs, vals] = LTISSSgetSolution(LTISSSobj)
%Obtains the solution of an LTISSS analysis:
%      freqs: a 1-d array containing the frequencies at which LTISSS analysis
%             was run
%      vals:  a 3-d array containing LTISSS analysis data:
%             vals(:,:,freq_idx) contains X(j*2*pi*freqs(freq_idx)),
%          X(s) is given by LTISSS eqn 1 (see the theory section of
%             help LTISSS), ie, X(s) = - (s*Cq + Gf+Gm)^{-1}*B*U(s).
%
%          Note: vals(:,:,freq_idx) will be a matrix if U(s) is a matrix
%             (this is useful for adjoint/noise applications); however, for
%          "normal" LTISSS/AC analysis, U(s) is a vector, hence
%          vals(:,:,freq_idx) will be a column vector of size
%          feval(DAE.nunks, DAE).
%Examples
%--------
% % set up and run an LTISSS analysis - see the examples in help LTISSS
% [freqs, vals] = LTISSSgetSolution(LTISSSobj)
% 
%           
%The help for this sub-function is incomplete <TODO>.
