%% a) Euler Method
f=@(t,y) (9*t^2-3.*y)/t;
h = 0.2;
n=10;
tinit=-0.5;
yinit=3.15;
% Initialize t and y as length n + 1 column vectors.
t = zeros(n + 1, 1);
y = zeros(n + 1, 1);
% Calculation of points t(i) and the corresponding
% approximate values y(i) from the Euler Method formula.
t(1) = tinit;
y(1) = yinit;
    for i = 1:n
        t(i + 1) = t(i) + h;
        y(i + 1) = y(i) + h*f(t(i), y(i));
    end
plot(t,y)
%% b) Improved Euler Method
f=@(t,y) (9*t^2-3.*y)/t;
h = 0.2;
n=10;
tinit=-0.5;
yinit=3.15;
% Initialize t and y as length n + 1 column vectors.
t = zeros(n + 1, 1);
y = zeros(n + 1, 1);
% Calculation of points t(i) and the corresponding
% approximate values y(i) from the Euler Method formula.
t(1) = tinit;
y(1) = yinit;
    for i = 1:n
        t(i + 1) = t(i) + h;
        y(i + 1) = y(i) + h*(f(t(i), y(i))+f(t(i+1), y(i)+h*f(t(i), y(i))))/2;
    end
    plot(t,y)
%% c) Ode45
f=@(t,y) (9*t^2-3.*y)/t;
[t,y]=ode45(f, [-0.5, 0.5], 3.15);
plot(t,y)
%Problem said to define it on interval (-0.5, 0.5) but solution is not
%defined here
%I plotted the function on the interval defined in the comment below
sol=ode45(f, [-0.5, 0.5], 3.15);
deval(sol, -0.06:0.02:0.06)
%solution is defined on [-0.06, -0.01]
[t,y]=ode45(f, [-0.06, -0.01], 3.15);
plot(t,y)
%% d) y(0)=0
y=dsolve('Dy=(9*t^2-3*y)/t' , 'y(0)=0' , 't')
fplot(y)
%% d) y(-0.5)=3.15                      
y=dsolve('Dy=(9*t^2-3*y)/t' , 'y(-0.5)=3.15' , 't')
fplot(y)
%% d) y(0.5)=3.15
y=dsolve('Dy=(9*t^2-3*y)/t' , 'y(0.5)=3.15' , 't')
fplot(y)
%% d) y(-0.5)=-3.45
y=dsolve('Dy=(9*t^2-3*y)/t' , 'y(-0.5)=-3.45' , 't')
fplot(y)
%% d) y(0.5)=-3.45
y=dsolve('Dy=(9*t^2-3*y)/t' , 'y(0.5)=-3.45' , 't')
fplot(y)

%Yes because Euler's Method is only accurate for first order ODE. The error
%also increases with the more timesteps taken. It requires exteremely small
%step sizes to have good accuracy. Ode45 is accurate for 4th and 5th order
%ODE
%ode45's interpolation procedure connects the approximate
%solution values at the internal time points, not with straight lines as
%mentioned for the Euler Method, but with higher degree polynomials. It
%performs both the calculation of approximate solution values and the
%interpolation process so that the total error for both don't exceed, by
%default 10^-3. 

