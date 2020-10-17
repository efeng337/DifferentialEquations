%% a)
f=@(t,y) exp(-3*t)+1/(1+y^2);
[t,y]=ode45(f, [-3,1], -1);
plot(t,y)
%as t approaches infinity, y approaches a finite limit at y=2700
%% b)
clear f
f=@(t,y) exp(-2*t)+y.^2;
[t,y]=ode45(f, [-0.25 0.5], 1);
plot(t,y)
%as t approaches 0.5, y approaches infinity
%% c)
clear f
f=@(t,y) cos(t)-y.^3;
[t,y]=ode45(f, [-2,1], 0);
plot(t,y)
%as t approaches infinity, y follows a sinusoidal path alternating
%between minimum -0.0903 and maximum 0.9304
%% d)
f=@(t,y) (sin(t))*y-y.^2;
[t,y]=ode45(f, [-10,10], 2);
plot(t,y)
%as t approaches infinity, y follows a sinusoidal graph with decreasing
%amplitude but solowly approaches 0. Looks similar to an Underdamped System