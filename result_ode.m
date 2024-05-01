y0=[0;0;0;0];
T=15;
[t,y]=ode23('ode_function',[0 T], y0);
plot( t, y(:,1), t, y(:,3), '--r')
title('Odziv sustava korištenjem ode23')
xlabel('t(s)')
ylabel('y(m)')
legend('y_1' , 'y_2')

