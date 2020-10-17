%a)
[T,Y]=meshgrid(-5:0.5:5, -5:0.5:5);
S=(2.*Y-T)/(2.*T-Y);
L=sqrt(1+S.^2);
quiver(T,Y, 1./L, S./L, 0.35)
%b)
hold on
f1=@(t,y) (t-y)/((t+y)^3)-(1/27);
f2=@(t,y) (t-y)/((t+y)^3)+(1/9);
fimplicit(f1)
fimplicit(f2)