%% a)
syms x y
[x,y]=solve(x*(4-3*y),y*(x-2))
%linear system: [4-3y -3x; y x-2]
%critical pt: (0,0) saddle unstable 
A=[4 0; 0 -2];
[xi,R]=eig(sym(A))
%critical pt: (2, 4/3) saddle unstable
B=[0 -6; 4/3 0]
[xi,R]=eig(sym(A))
%% b)
[X, Y] = meshgrid(0:1/15:2, 0:1/15:1.5);
U = X.*(4-3*Y);
V = Y.*(X-2);
quiver(X, Y, U, V)
title 'Graph 8b'
axis equal tight
%% c)
hold on
[X, Y] = meshgrid(0:1/15:2, 0:1/15:1.5);
U = X.*(4-3*Y);
V = Y.*(X-2);
quiver(X, Y, U, V)
axis equal tight
%phase portrait counterclockwise orientation
f= @(t,x)[x(1)*(4-3*x(2));x(2)*(x(1)-2)];
for a=0:1:2
    for b=0:1:2
        [t,xa]=ode45(f,[0 3], [a,b]);
        plot(xa(:,1),xa(:,2))
    end
end
title 'Graph 8c'
axis([-0.5 5 -0.5 5])
hold off
%vector field and phase portrait combined
%% d)
%there is a peaceful coexsitence because all trajectories seem to converge
%towards the critical point. This means that neither population goes
%towards zero and neither faces extincition. 
%% e)
f= @(t,x)[x(1)*(4-3*x(2));x(2)*(x(1)-2)];
[t,xa]=ode45(f,[0 1], [1,1]) % @t=1, (3.8424, 1.3120)
[t,xa]=ode45(f,[0 2], [1,1]) % @t=2, (0.8703, 1.3825)
[t,xa]=ode45(f,[0 3], [1,1]) % @t=3, (2.9454, 0.8452)
[t,xa]=ode45(f,[0 4], [1,1]) % @t=4, (1.1359, 1.8804)
[t,xa]=ode45(f,[0 5], [1,1]) % @t=5, (1.7844, 0.7594)
%% f)
f= @(t,x)[x(1)*(4-3*x(2));x(2)*(x(1)-2)];
[t,xa]=ode45(f,[0 2.4], [1,1])
%the period at (1,1) should be about 2.33 seconds. 