% b)
syms x
fun=(x+1).*log(x); %function
q=int(fun)  %indefinite integral

%c) 
fun2= @(x)sqrt(x./(1-x)); %function
q2=integral(fun2, 0, 1) %value of definite integral

%e)
fun3= @(x)sqrt(1+x.^4); %function
q3=integral(fun3, 0, 1) %value of definite integral
