%% a
syms s t Y
f=heaviside(t-pi)*heaviside(t)-heaviside(t-pi)*heaviside(t-10);
figure 
fplot(f, [0,6])
F=laplace(f,t,s);
Y1=s*Y-1;
Y2=s*Y1;
Sol=solve(Y2+3*Y1+2*Y-F,Y);
sol=ilaplace(Sol,s,t)
figure
fplot(sol, [0,15])
%the forcing function turns on when t is between 0 and 10 but the heaviside
%function will turn on once t=pi. So the solution will have a min at t=pi.
%After t>10, the solution should flatline.
%% b
syms s t Y
f=heaviside(t-3);
figure 
fplot(f, [0,6])
F=laplace(f,t,s);
Y1=s*Y;
Y2=s*Y1-1;
Sol=solve(Y2+2*Y1+3*Y-F,Y);
sol=ilaplace(Sol,s,t)
figure
fplot(sol, [0,15])
%the heaviside function turns on once t=3 so the solution will have min at
%t=3.
%% c
syms s t Y
f=cos(t)*heaviside(t)-cos(t)*heaviside(t-pi);
F=laplace(f,t,s);
Y1=s*Y;
Y2=s*Y1;
Sol=solve(Y2+2*Y1+4/5*Y-F,Y);
sol=ilaplace(Sol,s,t)
figure
fplot(sol, [0,15])
%since the forcing function is cos, the solution will follow a sinusoidal
%trend when t is between 0 and pi
%% d
syms s t Y
f=dirac(t-1)-dirac(t-2*pi);
F=laplace(f,t,s);
Y1=s*Y;
Y2=s*Y1;
Sol=solve(Y2+4*Y-F,Y);
sol=ilaplace(Sol,s,t)
fplot(sol, [0,15])
%the dirac delta should work like heaviside but be zero at all points
%except one. In this case, the solution increases in amplitude after t=2pi
%because like a spring mass system, the system gains energy at t=2pi
%% e
syms s t Y
f=sin(t)-dirac(t-3*pi);
F=laplace(f,t,s);
Y1=s*Y;
Y2=s*Y1;
Sol=solve(Y2+2*Y1+3*Y-F,Y);
sol=ilaplace(Sol,s,t)
fplot(sol, [0,15])
%the sin function will give the solution a sinusoidal path but the dirac
%delta function will be defined at point 3pi and zero everywhere else.
%Basically, the solution will follow a sinusoidal path but change at t=3pi
%to have a bigger amplitude. 