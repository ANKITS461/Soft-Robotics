%{
 uniaxial modelling
 plot of various models
mooney Rivlin 
Generalized Neo-hookean
 Gent
 augmented gent 
%}
clear all  clc, close all;

c1=0.199, c2=-0.1; %MPa unit
u=0.31, N=-10.81;
A=10.5, B=0.09;
Jm1=170, Jm2=84;

y=linspace(0,9,40);

i1=y.^2+2./y;

hold on;
%mooney Rivlin
 mr= 2*c1*(y-y.^(-2))+2*c2*(1-y.^(-3));

 %Generalized Neo-Hookean
 gnh=2*u.*N.*((3-3*N)./(1-3*N)).*(1./(6*N)-1./(i1-3*N)).*(y-y.^(-2));
  %Gent
 g= u.*Jm1.*(y-y.^(-2))./(Jm1-i1+3);
 
 %Augmented Gent
 ag=(2*A./(Jm2*y.^2-y.^4-2*y) + B./(sqrt(1+2*y).*(y.^2))).*(y.^3-1);
 
 plot(y,mr,'black--');
 plot(y,gnh,'g-');
 plot(y,g,'r-.');
 plot(y,ag,'b*');
 xlabel('stretch,\lambda');
 ylabel('Engineering stress, \sigma(MPa)');
 legend('mooney-rivlin','generalised Neo-hookean','gent','augmented gent')
 legend('location','northwest');
 title('Uniaxial loading Engineering stress');
 legend('location','northwest');
 text(1.3,5,'Ankit Singh, 222116605');
 axis([1 8 0 7]);
 
 