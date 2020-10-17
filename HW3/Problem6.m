%% a)
f=@(t,y) (t-exp(-t))/(y+exp(y))
sol=ode45(f, [0 2.1], 0.5)
deval(sol,[0 1 1.8 2.1])
%% b)
numsol=[0.5, 0.436, 0.8044, 0.968];
actsol=[0.3184 0.2356 0.6822 0.8662];
[t,y]=ode45(f, [0 2.1], 0.5);
plot(t, y)
hold on
fimplicit(@(t,y) 1/2*t.^2+exp(-t)-1/2*y.^2-exp(y), [-2.1,2.1])
hold off
%% c)
[t,y]=ode45(f, [1.5, 100], 0.5);
plot(t,y)
%as t approaches infinity, y seems to approach a limit but after I keep
%changing the interval to be larger and larger, the graph never seems to
%appraoch a finite limit. Therefore, I conclude the graph to approach
%infinity as t approaches infinity
%if I look at the differential equation, y+exp(y) can never equal 0 so y
%has no limit. 