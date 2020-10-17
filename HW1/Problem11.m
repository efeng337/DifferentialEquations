%a)
syms x y
eqn1 = x^2 - y^2 == 1; %equation 1
eqn2 = 2*x + y == 2;   %equation 2

sol = solve([eqn1,eqn2], [x, y]); 
xsol=sol.x %x solutions
ysol=sol.y %y solutions

%b)
x= -1:0.1:1.7 %interval
f1=-sqrt((x.^2)-1); %first function
f2=2-(2.*x); %second function
plot(x, f1, x, f2) %graph

