%function [fqei, J] = fqeiJ(vecX, vecY, vecLim, vecU, flag, MOD)
% input vecLim is optional
%OUTPUTS:
%
%	fqei.fe 
%	fqei.qe
%	fqei.fi
%	fqei.qi
%
%	J.Jfe			- struct that contains:
%						.dfe_dvecX
%						.dfe_dvecY
%						.dfe_dvecLim
%						.dfe_dvecU
%	J.Jqe			- struct that contains:
%						.dqe_dvecX
%						.dqe_dvecY
%						.dqe_dvecLim
%	J.Jfi			- struct that contains:
%						.dfi_dvecX
%						.dfi_dvecY
%						.dfi_dvecLim
%						.dfi_dvecU
%	J.Jqi			- struct that contains:
%						.dqi_dvecX
%						.dqi_dvecY
%						.dqi_dvecLim
%
%The help for this sub-function is incomplete <TODO>.
