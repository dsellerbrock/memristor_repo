%function ids = forward_ids(vds, vgs, VTH, KP, W, L, LD, LAMBDA)
% This function calculates forward ids in MOS level 1 model. It is pretty much
% the same as ids in Shichman Hodges model.
% The implementation is based on "The SPICE Book", Chapter 3
% "Semiconductor-Device Elements", Section 3.5.1 MOSFET DC Model, Page 103.
%       0                                              for vgs <= VTH
% ids = KP/2 * W/Leff * (vgs-VTH)^2 * (1+LAMBDA*vds)   for 0< vgs - VTH <= vds
%       KP/2 * W/Leff * vds * (2*(vgs-VTH)-vds) * (1+LAMBDA*vds)
%                                                       for 0< vds < vgs - VTH
% where Leff = L - 2*LD is the effective channel length corrected for the
% lateral diffusion LD, of the drain and source
%The help for this sub-function is incomplete <TODO>.
