function MOD = MOS1ModSpec_v1_wrapper(uniqID)
%function MOD = MOS1ModSpec_v1_wrapper(uniqID)
%
% v1: only N type is implemented
%     only forward ids is considered, no charge calculation, no diode current
%          calculation
%     no DS inversion
%
%This function creates a ModSpec object model for SPICE's MOSFET level 1 model
%
%Arguments:
% - uniqID: (optional) a unique identification string. Eg, 'M1'
%
%Return values:
% - MOD:    a ModSpec object for MOS level 1 model
%
%Model information
%-----------------
%
% - nodes and their names: 
%   - {'d', 'g', 's', 'b'} (drain, gate, source, bulk).
%
% - parameters and their default values:
% model parms based on The SPICE Book:
%     name    default unit   description
%   - 'VTO'    0.0    V      'Zero-bias threshold voltage'
%   - 'KP'     2e-5   A/V^2  'Transconductance coefficient'
%   - 'GAMMA'  0.0    V^0.5  'Bulk threshold parameter'
%   - 'PHI'    0.6    V      'Surface potential'
%   - 'LAMBDA' 0.0    V^-1   'Channel-length modulation'
%   - 'RD'     0.0    Ohm    'Drain ohmic resistance'
%   - 'RS'     0.0    Ohm    'Source ohmic resistance'
%   - 'RSH'    0.0    Ohm/sq 'Drain  source diffusion sheet resistance' %TODO: what's sq
%   - 'CBD'    0.0    F      'Zero-bias bulk-drain p-n capacitance'
%   - 'CBS'    0.0    F      'Zero-bias bulk-source p-n capacitance'
%   - 'CJ'     0.0    F/M^2  'Bulk p-n zero-bias bottom capacitance/area'
%   - 'MJ'     0.5    NONE   'Bulk p-n bottom grading coefficient'
%   - 'CJSW'   0.0    F/M^2  'Bulk p-n zero-bias sidewall capacitance/area' %TODO: CJSW is with unit F/m in The Spice Book
%   - 'MJSW'   0.5    NONE   'Bulk p-n sidewall grading coefficient'
%   - 'PB'     0.8    V      'Bulk p-n bottom potential'
%   - 'IS'     1e-14  A      'Bulk p-n saturation current'
%   - 'CGDO'   0.0    F/M    'Gate-drain overlap capacitance/channel width'
%   - 'CGSO'   0.0    F/M    'Gate-source overlap capacitance/channel width'
%   - 'CGBO'   0.0    F/M    'Gate-bulk overlap capacitance/channel length'
%   - 'TOX'    1e-7   m      'Gate oxide thickness'
%   - 'LD'     0.0    m      'Lateral diffusion length'
% extra model parms in MOSFET1 in Xyce-6.0 (ignored for the moment):
%   - 'L'      1e-4   m      'Default channel length'
%   - 'W'      1e-4   m      'Default channel width'
%   - 'JS'     0.0    A/M^2  'Bulk p-n saturation current density'
%   - 'UO'     600.0  CMM2VM1SM1  'Surface mobility' %TODO: what's this
%   - 'U0'     600.0  CMM2VM1SM1  'Surface mobility' %TODO: what's this
%   - 'FC'     0.5    NONE   'Bulk p-n forward-bias capacitance coefficient'
%   - 'NSUB'   0.0    CMM3   'Substrate doping density'
%   - 'NSS'    0.0    CMM2   'Surface state density'
%   - 'TNOM'   27.0   NONE   ''
%   - 'KF'     0.0    NONE   'Flicker noise coefficient'
%   - 'AF'     1.0    NONE   'Flicker noise exponent'
%   - 'TPG'    0      NONE   'Gate material type (-1 = same as substrate
%                             0 = aluminum  1 = opposite of substrate)'
% element parms:
%   - 'L'      1e-4   m      'Default channel length'
%   - 'W'      1e-4   m      'Default channel width'
%
%Examples
%--------
% % adding an NMOS with default parameters to an existing circuitdata structure
% cktdata = add_element(cktdata, MOS1ModSpec(), 'M1', ...
%           {'nD', 'nG', 'nS', 'nB'}, [], {});
%
%See also
%--------
% 
% add_element, circuitdata, ModSpec, supported_ModSpec_devices, DAEAPI, DAE
%

%
% author: T. Wang. 2014-06-27

%change log:
%-----------
%2014/06/27: Tianshi Wang <tianshi@berkeley.edu> Created

	MOD = ee_model();

	MOD = add_to_ee_model (MOD, 'modelname', 'MOS1');
	MOD = add_to_ee_model (MOD, 'description', 'SPICE''s MOSFET level 1 model');

    MOD = add_to_ee_model (MOD, 'terminals', {'d', 'g', 's', 'b'});
    MOD = add_to_ee_model (MOD, 'explicit_outs', {'idb', 'igb', 'isb'});

	% model parms:
    MOD = add_to_ee_model (MOD, 'parms', {'VTO',    0.0});
    MOD = add_to_ee_model (MOD, 'parms', {'KP',     2e-5});
    MOD = add_to_ee_model (MOD, 'parms', {'GAMMA',  0.0});
    MOD = add_to_ee_model (MOD, 'parms', {'PHI',    0.6});
    MOD = add_to_ee_model (MOD, 'parms', {'LAMBDA', 0.0});
    MOD = add_to_ee_model (MOD, 'parms', {'RD',     0.0});
    MOD = add_to_ee_model (MOD, 'parms', {'RS',     0.0});
    MOD = add_to_ee_model (MOD, 'parms', {'RSH',    0.0});
    MOD = add_to_ee_model (MOD, 'parms', {'CBD',    0.0});
    MOD = add_to_ee_model (MOD, 'parms', {'CBS',    0.0});
    MOD = add_to_ee_model (MOD, 'parms', {'CJ',     0.0});
    MOD = add_to_ee_model (MOD, 'parms', {'MJ',     0.5});
    MOD = add_to_ee_model (MOD, 'parms', {'CJSW',   0.0});
    MOD = add_to_ee_model (MOD, 'parms', {'MJSW',   0.5});
    MOD = add_to_ee_model (MOD, 'parms', {'PB',     0.8});
    MOD = add_to_ee_model (MOD, 'parms', {'IS',     1e-14});
    MOD = add_to_ee_model (MOD, 'parms', {'CGDO',   0.0});
    MOD = add_to_ee_model (MOD, 'parms', {'CGSO',   0.0});
    MOD = add_to_ee_model (MOD, 'parms', {'CGBO',   0.0});
    MOD = add_to_ee_model (MOD, 'parms', {'TOX',    1e-7});
    MOD = add_to_ee_model (MOD, 'parms', {'LD',     0.0});
	% element parms:
    MOD = add_to_ee_model (MOD, 'parms', {'L',      1e-4});
    MOD = add_to_ee_model (MOD, 'parms', {'W',      1e-4});

    MOD = add_to_ee_model (MOD, 'fe', @fe);
    MOD = add_to_ee_model (MOD, 'qe', @qe);
    MOD = add_to_ee_model (MOD, 'fi', @fi);
    MOD = add_to_ee_model (MOD, 'qi', @qi);

    MOD = finish_ee_model(MOD);

end

function out = fe(S)
	out = fqei(S, 'f', 'e');
end

function out = qe(S)
	out = fqei(S, 'q', 'e');
end

function out = fi(S)
	out = fqei(S, 'f', 'i');
end

function out = qi(S)
	out = fqei(S, 'q', 'i');
end

function out = fqei(S, forq, eori)

    v2struct(S);

	vds = vdb - vsb;
	vgs = vgb - vsb;
	vbs = -vsb;

	VTH = MOS1_VTH(vbs, VTO, GAMMA, PHI);
	ids = forward_ids(vds, vgs, VTH, KP, W, L, LD, LAMBDA);

	if 1 == strcmp(eori,'e') % e
		if 1 == strcmp(forq, 'f') % f
			% idb
			out(1,1) = ids;
			% igb
			out(2,1) = 0;
			% isb
			out(3,1) = -ids;
		else % q
			% qdb
			out(1,1) = 0;
			% qgb
			out(2,1) = 0;
			% qsb
			out(3,1) = 0;
		end % forq
	else % i
		if 1 == strcmp(forq, 'f') % f
			out = [];
		else % q
			out = [];
		end
	end
end


function VTH = MOS1_VTH(vbs, VTO, GAMMA, PHI)
%function VTH = MOS1_VTH(vbs, VTO, GAMMA, PHI)
% This function calculates threshold voltage VTH in MOS level 1 model
% The implementation is based on "The SPICE Book", Chapter 3
% "Semiconductor-Device Elements", Section 3.5.1 MOSFET DC Model, Page 103.
% VTH = VTO + GAMMA * (sqrt(2*PHI-vbs) - sqrt(2*PHI))
% is the threshold voltage in the presence of back-gate bias, vbs < 0
    VTH = VTO + GAMMA * (sqrt(2*PHI-vbs) - sqrt(2*PHI));
end % MOS1_VTH

function ids = forward_ids(vds, vgs, VTH, KP, W, L, LD, LAMBDA)
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
    Leff = L - 2*LD;
    if (vgs <= VTH)
          % off
          ids = 0;
    elseif (vgs <= vds + VTH)
          % active
          ids = KP/2 * W/Leff * (vgs-VTH)^2 * (1+LAMBDA*vds);
    else % vgs > vds+VTH
          % triode
          ids = KP/2 * W/Leff * vds * (2*(vgs-VTH)-vds) * (1+LAMBDA*vds);
    end
end % forward_ids
