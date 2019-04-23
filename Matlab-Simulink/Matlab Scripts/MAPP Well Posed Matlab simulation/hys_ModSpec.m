function MOD = hys_ModSpec()
 MOD = ee_model();
 MOD = add_to_ee_model(MOD, 'name', 'hys');
 MOD = add_to_ee_model(MOD, 'terminals', {'p', 'n'}); % create IO: vpn, ipn
 MOD = add_to_ee_model(MOD, 'explicit_outs', {'ipn'});
 MOD = add_to_ee_model(MOD, 'internal_unks', {'s'});
 MOD = add_to_ee_model(MOD, 'implicit_eqn_names', {'ds'});
 MOD = add_to_ee_model(MOD, 'parms', {'R', 1e3, 'k', 1, 'tau', 1e-5});
 MOD = add_to_ee_model(MOD, 'fqei', {@fe, @qe, @fi, @qi});
 MOD = finish_ee_model(MOD);
 end % hys_ModSpec

 function out = fe(S)
 v2struct(S); % populates workspace with vpn, R, k, tau
 out = vpn/R * (1+tanh(k*s)); % ipn
 end % fe

 function out = qe(S)
 out = 0; % ipn
 end % qe

 function out = fi(S)
 v2struct(S);
 out = vpn - s^3 + s;
 end % fi

 function out = qi(S)
 v2struct(S);
 out = - tau * s;
 end % qi
