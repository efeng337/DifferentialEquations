%% a
syms w u(t)
eqn=diff(u,t,2)==3*cos(w*t)-u;
Du=diff(u,t);
cond=[u(0)==0, Du(0)==0];
usol=dsolve(eqn,cond);
ut=matlabFunction(usol);
t=0:0.01:15;
w=[.5 .6 .7 .8 .9]';
plot(t, ut(w,t))
legend('w=.5','w=.6','w=.7','w=.8','w=.9')
grid
%all solutions are underdamped but it seems the amplitude changes as w gets
%closer to w0
%% b
syms u(t)
eqn=diff(u,t,2)==3*cos(t)-u;
Du=diff(u,t);
cond=[u(0)==0, Du(0)==0];
usol=dsolve(eqn,cond);
ut2=matlabFunction(usol);
t=0:0.01:35;
plot(t, ut2(t))
%resonance is exhibited
%% c
plot(t,ut(0.9,t))
%the curve for w=0.9 seems to equal 0 due to underdamped