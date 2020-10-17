%% a)
A=[2 -1; 3 -2];
[xi,R]=eig(sym(A))
%general sol: c1*exp(t)*[1 1] + c2*exp(-t)*[1/3 1]
B=[1 -1; 5 -3];
[xi,R]=eig(sym(B))
%general sol: c1*exp((-1-i)*t)*[2/5-i/5 1] + c2*exp((-1+i)*t)*[2/5+i/5 1]
C=[-3 5/2; -5/2 2]
[xi,R]=eig(sym(C))
%general sol:c1*exp(-1/2*t)*[1 1] + c2*(t*exp(-1/2*t)*[1 1]+exp(-1/2*t)*[0 2/5])
%% b)
ivp1='Dx=2*x-y,Dy=3*x-2*y,x(0)=a,y(0)=b';
[x,y]=dsolve(ivp1,'t')
xf=@(t,a,b) eval(vectorize(x));
yf=@(t,a,b) eval(vectorize(y));
figure; hold on
t=-5:0.1:5;
for a=-2:2
    for b=-2:2
        plot(xf(t,a,b),yf(t,a,b))
    end
end
title 'Graph 1b ivp1'
%saddle. eigenvector [1 1] goes away from origin. eigenvector [1/3 1] goes
%toward origin. Unstable. 
ivp2='Dx=x-y, Dy=5*x-3*y, x(0)=a, y(0)=b';
[x,y]=dsolve(ivp2, 't')
xf=@(t,a,b) eval(vectorize(x));
yf=@(t,a,b) eval(vectorize(y));
figure; hold on
t=-5:0.1:5;
for a=-2:2
    for b=-2:2
        plot(xf(t,a,b),yf(t,a,b))
    end
end
title 'Graph 1b ivp2'
%counterclockwise spiral sink. stable.
ivp3='Dx=-3*x+2.5*y, Dy=-2.5*x+2*y, x(0)=a, y(0)=b';
[x,y]=dsolve(ivp3, 't')
xf=@(t,a,b) eval(vectorize(x));
yf=@(t,a,b) eval(vectorize(y));
figure; hold on
t=-2:0.1:2;
for a=-2:2
    for b=-2:2
        plot(xf(t,a,b),yf(t,a,b))
    end
end
title 'Graph 1b ivp3'
%clockwise twist sink. stable. 