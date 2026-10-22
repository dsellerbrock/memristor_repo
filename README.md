# memristor_repo

Memristor modelling and characterization work (2019-2021): circuit models in MATLAB/Simscape, an FPGA design in Quartus, LabVIEW instrument control, and the measured data.

| | |
|---|---|
| Tools | MATLAB / Simulink / Simscape, Quartus, ModelSim, LabVIEW |
| Status | Archived (last commit 2021-06) |
| License | MIT (own code); `pyrenn` is a separate submodule |

## Layout

| Path | What |
|---|---|
| `Matlab-Simulink/Models Simscape/` | Ideal and well-posed memristor Simscape components |
| `Matlab-Simulink/Matlab Scripts/` | Crossbar generator, hysteresis experiment, neural-network model, MAPP well-posed simulation |
| `Matlab-Simulink/Frameworks/pyrenn` | Neural-network library (submodule) |
| `Memristor_FPGA_W_Pav_Dog/` | Quartus project (sources only; `db/`, `output_files/`, `simulation/modelsim/` are ignored) |
| `LabVIEW VI/` | Forming/hysteresis and voltage-control VIs |
| `Memristor Characterization Data/` | Measurement spreadsheets and neural-network training set |

## Notes

- The MATLAB scripts that use MAPP need the third-party [MAPP](https://github.com/jaijeet/MAPP) framework in `Matlab-Simulink/Frameworks/`; it is no longer tracked (it remains in git history).
- Large files go through Git LFS (`.gitattributes`).
