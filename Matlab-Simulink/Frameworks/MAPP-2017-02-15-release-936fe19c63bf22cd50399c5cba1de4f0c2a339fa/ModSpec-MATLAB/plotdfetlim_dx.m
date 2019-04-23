%
%Author: Tianshi Wang <tianshi@berkeley.edu>, 2013/sometime
%

vto = 0.3;
nx = 50;
%dxs = (0:ndx)/ndx*6*Vt-3*Vt;
xs = (0:nx)/nx*10*vto-5*vto;
xsold = (0:nx)/nx*10*vto-5*vto;

for i = 1:length(xs)
	x = xs(i);
	for j = 1:length(xsold)
		xold = xsold(j);
		newxs(i,j) = dfetlim_dx(x, xold, vto);
	end
end

surf(xsold,xs,newxs);

title 'DFETLIM\_DX(xold,x)';
xlabel 'xold'
ylabel 'x'
zlabel 'dnewx=DFETLIM\_DX(xold,x)';
view (45,45);
