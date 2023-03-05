%finding stress profile in case of radial stress
clear all, clc;
syms Y r a A Yz R p c1 c2;
R=(A.^2+Yz.*(r.^2-a.^2)).^0.5;
Y=r/R;
sig1=2*(c1./r).*(Y.^2-(Y.*Yz).^(-2));
sig2=(2*(c2./r).*(Y.^(-2)-(Y.*Yz).^2));
T=int(sig1-sig2,r);
Tz=subs(T,[a c2 c1 A Yz],[2 -0.1 0.199 10 1.5])
%Tz=subs(T,[a c2 c1 A],[2 -0.1 0.199 10])
r1=linspace(2,10,400);
%Yz1=linspace(1,3,400);
plot(r1,subs(Tz,r,r1),'r');
title('stress profile in cylindrical configuration');
ylabel('stress');
xlabel('distance from centre');