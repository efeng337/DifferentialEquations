%a)
f=@(x,y) 3.*y+y.^3-x.^3-5 %function
%fimplicit(f)  %graph

%b)
%f2=@(x,y) 3.*y+y.^3-x.^3-3 %c=-2 
%f2=@(x,y) 3.*y+y.^3-x.^3-5 %c=0 
%f2=@(x,y) 3.*y+y.^3-x.^3-7 %c=2
%f2=@(x,y) 3.*y+y.^3-x.^3-10 %c=5
%f2=@(x,y) 3.*y+y.^3-x.^3-13 %c=8
%fimplicit(f2) %graph

%c)
f3=@(x,y) y.*log(x)+x.*log(y) %function
fimplicit(f3)
hold on 
f4=@(x,y) y.*log(x)+x.*log(y)
plot(1,1, 'ro')
%graph 
