syms s t Y
f=dirac(t-1);
F=laplace(f,t,s);
Y1=s*Y;
Y2=s*Y1;
Y3=s*Y2;
Sol=solve(Y3-Y2-Y1-2*Y-F,Y);
sol=ilaplace(Sol,s,t)
fplot(sol, [0,10])