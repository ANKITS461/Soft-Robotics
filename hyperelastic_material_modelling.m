clc;

%y1=1,y2=1,y3=1;    
% also y1*y2*y3=1; as per hyperelastic, isotropic and incompressible
% material theory
y=1.2
y1=y, y2=y^(-0.5), y3=y2; %uniaxial

% biaxial- y1=y2=y, y3=y^(-2);
%y1=Lf/Li, y2= Bf/Bi, y3=Hf/hi; %stretch

i1=[y1^2+y2^2+y3^2],i2=[y1^(-2)+y1^(-2)+y1^(-2)], i3=1; %lambda- y
I=[1 0 0;0 1 0;0 0 1];
F=[y1 0 0;0 y2 0;0 0 y3];
c1=2,c2=3;
f=mriv(c1,c2,i1,i2);
%{
stress response
p=1;
B=F*F.' %left cauchy green tensor %matrix multiplied with transpose
U1=diff(f,i1);
U2=diff(f,i2);
%Sig=-p*I+2*U1*B+2*U2*(i1*B-B^2); 
%}