%a)
syms y t
sol=dsolve('Dy=t^2/(1+y^2)', 't')
%judging from the roots given, the general function f(t,y)
%=(y^3)/3+y-(t^3)/3=c

%b)
f1=@(t,y) (y^3)/3+y-(t^3)/3;
fcontour(f1)
xlim([-1.5 1.5]);
ylim([-1.5 1.5]);
%c)
hold on
syms y(t)
ode=diff(y,t)==(t^2)/(1+y^2);
cond=y(0.5)==1;
sol_c=dsolve(ode, cond)
fplot(sol_c, ':r');
xlim([-1.5 1.5]);
ylim([-1.5 1.5]);
%d)
y1=fzero(@(y) (y^3)/3+y-(1/24), 0);
y2=fzero(@(y) (y^3)/3+y, 0);
y3=fzero(@(y) (y^3)/3+y+(1/24), 0);
plot(-1, 0.7889, 'r*'); %t1=-1 ,y2
plot(0, 0.9789, 'b*'); %t2=0 ,y2
plot(1, 1, 'g*'); %t3=1, y3

