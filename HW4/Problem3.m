%% a)
A=[0.1 0.71 1.51 3.1];
for i=1:4
    rhs = @(t,y) [y(2); -sin(y(1))];
    [ta,ya] = ode45(rhs, [0 6*pi], [A(i);0]);
    figure
    plot(ta, ya(:,1))
end
%T(0.1)=6.2 T(0.7)=6.4 T(1.5)=7.3 T(3)=16
%measured period from crest to crest of each figure
%% b)
for i=1:4
    A=[0.1 0.7 1.5 3];
    syms x
    k=sin(A(i)/2);
    f=1/(sqrt(1-k^2*(sin(x))^2));
    T=4*int(f, [0 pi/2]);
    double(T)
end
%Yes!
%% c)
A=[0.128 0.732 1.53 2.99]; %new A values to get close b) values
for i=1:4
    rhs=@(t,y) [y(2); -sin(y(1))];
    [ta,ya]= ode45(rhs, [0 6*pi], [A(i);0]);
    figure
    plot(ta, ya(:,1))
end
%% d)
%Noting that K is a constant of the motion, 
%the displacement in each successive interval of time is proportional to the initial displacement A 
%which is the amplitude of the motion. If the amplitude doubled so would the distance covered in a given time. 
%Thus the period of the motion does not depend on the amplitude.
%yes the period is close to 2pi
%as the initial displacement increases, the accuracy of the linear
%approximation decreases