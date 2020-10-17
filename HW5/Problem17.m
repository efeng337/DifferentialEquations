%% a
tic
dsolve('D2y+Dy+y=(t+1)^3*exp(-t)*cos(t)*sin(3*t)','Dy(0)=0','y(0)=1')
toc 
% ~11.196129 seconds
%% b
tic
syms s t Y
f=(t+1)^3*exp(-t)*cos(t)*sin(3*t);
F=laplace(f,t,s);
Y1=s*Y-1;
Y2=s*Y1;
Sol=solve(Y2+Y1+Y-F,Y);
sol=ilaplace(Sol,s,t)
toc
% ~1.716726 seconds
%% c
f1=dsolve('D2y+Dy+y=(t+1)^3*exp(-t)*cos(t)*sin(3*t)','Dy(0)=0','y(0)=1')
figure
fplot(real(f1),[0 15])
syms s t Y
f=(t+1)^3*exp(-t)*cos(t)*sin(3*t);
F=laplace(f,t,s);
Y1=s*Y-1;
Y2=s*Y1;
Sol=solve(Y2+Y1+Y-F,Y);
sol=ilaplace(Sol,s,t)
figure
fplot(sol,[0 15])