syms t c
% a)
sol=simplify(dsolve('Dy=((2*t)-y)/t', 'y(1)=c', 't'));
% b)
% for c=0.8 
subs(sol, [c t], [0.8 0.01]) %t=0.01
subs(sol, [c t], [0.8 0.1]) %t=0.1
subs(sol, [c t], [0.8 1]) %t=1
subs(sol, [c t], [0.8 10]) %t=10
% for c=1
subs(sol, [c t], [1 0.01]) %t=0.01
subs(sol, [c t], [1 0.1]) %t=0.1
subs(sol, [c t], [1 1]) %t=1
subs(sol, [c t], [1 10]) %t=10
% for c=1.2
subs(sol, [c t], [1.2 0.01]) %t=0.01
subs(sol, [c t], [1.2 0.1]) %t=0.1
subs(sol, [c t], [1.2 1]) %t=1
subs(sol, [c t], [1.2 10]) %t=10
%c)
for cval=0.8:0.1:1.2
    hold on
    fplot(subs(sol,c,cval), [0,2.5])
end
axis tight
%d)
% as t approaches infinity, all solutions still aproach 0
% as t approaches 0^+, the initial values affect 2 graphs to approach
% infnity, 2 other graphs to appraoch negative infinity. However, there is
% still one graph that is unaffected since its solution always equals 0