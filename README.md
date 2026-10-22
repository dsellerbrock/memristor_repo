# memristor_repo

Memristor modelling and characterization (2019-2021): Simscape/MATLAB models, a Quartus FPGA design, LabVIEW control VIs and measured data.

- `Matlab-Simulink/`: Simscape memristor models, crossbar, neural-network and MAPP well-posed scripts (`Frameworks/pyrenn` is a submodule)
- `Memristor_FPGA_W_Pav_Dog/`: Quartus project (sources only; build output is ignored)
- `LabVIEW VI/`: forming/hysteresis and voltage-control VIs
- `Memristor Characterization Data/`: measurements (xlsx)

Needs the third-party [MAPP](https://github.com/jaijeet/MAPP) framework in `Matlab-Simulink/Frameworks/` for the MAPP scripts (no longer tracked).
Status: archived (2021-06).
