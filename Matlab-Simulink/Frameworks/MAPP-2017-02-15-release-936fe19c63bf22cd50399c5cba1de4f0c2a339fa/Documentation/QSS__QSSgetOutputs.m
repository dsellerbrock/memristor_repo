%function outputvals = QSSgetOutputs(QSSobj)
%This function returns the DAE's defined outputs (C*x+D*u). 
%INPUT args:
%   QSSobj          - QSS object with complete QSS analysis solution
%OUTPUT:
%   outputvals      - C*QSSobj.solution + D*uQSS 
%                      if the solution is not valid, returns outputs
%                      corresponding to the last NR iterate.
%The help for this sub-function is incomplete <TODO>.
