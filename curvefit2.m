clear all, clc;

c1=0.199, c2=-0.1; %MPa unit
y=linspace(0,9,40);

i1=y.^2+2./y;

hold on;
%mooney Rivlin
 mr= 2*c1*(y-y.^(-2))+2*c2*(1-y.^(-3));
