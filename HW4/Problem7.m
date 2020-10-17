%% a
[t,y]=ode45(@(t,y) heit(t,y,5),[0:0.01:40],[1000;0]);
fprintf('The height which chute opens is %f\n', y(t(:)==5, 1));
fprintf('The time to reach the ground is %f\n', t((y(:,1)>-0.1 & y(:,1)<0.1)));
n=1;
i=0;
while n
    i=i+0.1;
    [t,y]=ode45(@(t,y) heit(t,y,5+i),[0:0.01:40],[1000;0]);
    i=i+0.1;
    if(y((y(:,1)>-0.1 & y(:,1)<0.1),2)>(-18.028*1.05))
        n=0;
    end
end
%% b
syms v
solution=solve(((192/1950)*v^2)-32==0, v)
%Since this polynomial equation has two answers, we will be taking the
%negative answer since an object falling down would have negative velocity.
%Thus, the answer is -5*13^(1/2)
%% c
fprintf('The height would be %f\n', y(t(:)==5+i,1))