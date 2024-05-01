function [dx]=ode_function(t,x)
m1=250;
m2=50;
k1=500;
k2=1000;
B=500;
%A=5;
%f=0.7;
%u=A*sin(2*pi*f*t);


dx=zeros(4,1);

dx(1)=x(2);
dx(2)=-k1/m1*x(1)-B/m1*x(2)+k1/m1*x(3)+B/m1*x(4);
dx(3)=x(4);
dx(4)= k1/m2*x(1)+B/m2*x(2)-((k1+k2)/m2)*x(3)-B/m2*x(4)+(k2/m2);
end