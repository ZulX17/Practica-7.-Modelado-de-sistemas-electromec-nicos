function dx=electromeca(t,x)
%---Definicion de los parametros---%
Ra =2;        %Resistencia 1
Kt =0.01;     %Coef. Torque
b =0.0012;    %Amortiguacion
La =0.023;    %Inductancia
Ke =0.01;     %Coef. Voltaje
Jm =0.001;    %Inersia
Va =5;        %Voltaje
T =0;
%---Vector de 2x1---%
dx=zeros(3,1);
%---Definicion de la dinamica del sitema---%
dx(1)=(1/La)*(-Ke*x(3)-Ra*x(1)+Va);
dx(2)=x(3);
dx(3)=(1/Jm)*(Kt*x(1)-T-b*x(3));
%------%   