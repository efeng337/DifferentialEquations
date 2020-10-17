%% a)
sol1=dsolve('Dy=y^2' , 'y(0)=2' , 't')
sol2=dsolve('Dy=(y^2)-1' , 'y(0)=2' , 't')
%as t* approaches 0.5*log(3), the solutions approach infinity
%% b)
[t,y]=ode45(@(t, y) y.^2-exp(-t.^2), [0 0.54], 2);
plot(t,y)
%t*=0.54 