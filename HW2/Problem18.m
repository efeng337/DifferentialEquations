%a) equilibrium solutions are y=2 y=0
[T,Y]=meshgrid(-5:0.2:5, -5:0.2:5);
S=-1*(2-Y).*Y;
L=sqrt(1+S.^2);
quiver(T,Y, 1./L, S./L, 0.5)
hold on
%y=2 is unstable
%y=0 is stable
%y(t)=0 as t approaches infinity
%y(t) goes to infinity as t approaches infinity
%b & c)
sol1=dsolve('Dy=-1*(2-y)*y', 'y(0)=1.5', 't')
sol2=dsolve('Dy=-1*(2-y)*y', 'y(0)=0.3', 't')
sol3=dsolve('Dy=-1*(2-y)*y', 'y(0)=2.1', 't')
fplot(sol1)
fplot(sol2)
fplot(sol3)
%inflection pt is when y''=0 at t=(ln3)/2
%c)
axis tight
%yes