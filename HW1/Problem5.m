f1 = @(x) x.^8;
f2 = @(x) 4.^x;
f3=@(x) x.^8-4.^x
%fplot(f1, [-1,1.3]); %graph of first & second intersections
hold on
%fplot(f2, [-1,1.3]);
firstzero=fzero(f3, -0.8) %value of first x
secondzero=fzero(f3, 1.2) %value of second x
thirdzero=fzero(f3, 15)   %value of third x
fplot(f1, [0,18]) %graph of third intersection
hold on
fplot(f2, [0,18])