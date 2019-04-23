%function VTH = MOS1_VTH(vbs, VTO, GAMMA, PHI)
% This function calculates threshold voltage VTH in MOS level 1 model
% The implementation is based on "The SPICE Book", Chapter 3
% "Semiconductor-Device Elements", Section 3.5.1 MOSFET DC Model, Page 103.
% VTH = VTO + GAMMA * (sqrt(2*PHI-vbs) - sqrt(2*PHI))
% is the threshold voltage in the presence of back-gate bias, vbs < 0
%The help for this sub-function is incomplete <TODO>.
