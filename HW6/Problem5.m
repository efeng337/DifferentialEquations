%% a)
figure; hold on
f=@(t,x) [x(2);-sin(x(1))];
for b=0.5:0.5:2.5
    [t,xa]=ode45(f,[0 15],[0 b]);
    plot(xa(:,1),xa(:,2))
end
xlabel t, ylabel y
title 'Graph 5a'
axis equal
hold off
%% b)
%when theta prime=1.5, the pendulum swings back and forth without having its original path rotating more than 180 degree in one direction. 

%when theta prime=2, the pendulum reaches top edge of the trajectory.
%However, it stays and never leaves the orbit still swinging back.

%when theta prime=2.5, the pendulum swings past the top, and never ssings
%back in the opposite direction leaving it in elliptical orbit.
%% c)
%dE/dt=theta''+sin(theta)=y'+sin(x)=0
%energy is conserved. Total Mechanical Energy is constant.
%% d)
figure; hold on
eqn='1-cos(x)+(1/2)*y^2';
efun=@(x,y) eval(vectorize(eqn));
evals=efun(0,0.5:0.2:2*pi);
[x,y]=meshgrid(-3*pi:0.1:3*pi,-3*pi:0.1:3*pi);
contour(x,y,efun(x,y),evals);
xlabel t,ylabel y
title 'Graph 5d'
hold off
%they both show the same trajectories the pendulum can take. 
%% e)
%the energy is at its max. Critical value is when Eo'=0 so (pi,0). pi acts
%as a saddle which explains the pendulums behavior before and past this
%point. b=1. Pendulum should be at max height. 
%% f)
figure; hold on
f=@(t,x) [x(2); -0.5*x(2)-sin(x(1))];
for b=0.5:0.5:6
    [t,xa]=ode45(f,[0 15],[0 b])
    plot(xa(:,1),xa(:,2))
end
title 'Graph 5f'
axis equal
hold off
%The pendulum comes back to its original position at the beginning (0,0)
%and after it goes through 1 full revolution (2pi,0). The pendulum will
%always seek to go back to its initial position again. Librational motion.
%bo=3.09
%this corresponds to when the pendulum starts out with an angular velocity
%at t=0. 
%% g)
%E is constant so E'=theta'+sin(theta)=0. If E is increasing, we would see
%that the trajectory lines go away from the critical points. If E is
%decreasing, the trajectory lines would go towards the critical points. If
%E is constant, the trajectory lines would be a center. Graph in f can
%demonstrate these trends by matching their stability with its direction as
%t approaches infinity. They also show spiral trajectories around the
%critical points. 