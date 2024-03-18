%Funcion ode45 que resuelve numericamente el sistema%
[t,x]=ode45(@electromeca,[0 10],[0 0 0]);
%Aqui se crea la figura donde se va a graficar el x con respecto a t%
%x y t son paramentros que retorna la funcion ode45
figure(1)
plot(t,x(:,3),'m');
grid on
title("Velocidad Motor");
xlabel("Tiempo");   
ylabel("Radianes");
