%PREGUNTA 2 PRIMER EXAMEN PARCIAL ROBOTICA%

clear;
clc;

Ro = [0.666667 -0.666667 -0.3333333 ; ...
      0.333333  0.666667 -0.666667 ; ...
      0.666667  0.333333  0.666667] ;
      
%Rotacion desde a Operador M%         
%Pregunta 1.
theta1 = 30



Rx1 = [1         0           0 ; ...
      0 cosd(theta1) -sind(theta1) ; ...
      0 sind(theta1) cosd(theta1)] ;

Ry1 = [cosd(theta1)   0 sind(theta1) ; ...
          0         1     0       ; ...
      -sind(theta1)  0 cosd(theta1)] ;

Rz1 = [cosd(theta1) -sind(theta1)  0 ;...
      sind(theta1)  cosd(theta1)  0 ;...
          0             0       1];

R1 = Ro*Rz1


%Rotacion en pase a Operador M%         
%Pregunta 2.
theta2 = 15


Rx2 = [1         0           0 ; ...
      0 cosd(theta2) -sind(theta2) ; ...
      0 sind(theta2) cosd(theta2)] ;

Ry2 = [cosd(theta2)   0 sind(theta2) ; ...
          0         1     0       ; ...
      -sind(theta2)  0 cosd(theta2)] ;

Rz2 = [cosd(theta2) -sind(theta2)  0 ;...
      sind(theta2)  cosd(theta2)  0 ;...
          0             0       1];

R2 = R1*Ry2

%Rotacion en pase a Operador M%         
%Pregunta 3.
theta3 = 25


Rx3 = [1         0           0 ; ...
      0 cosd(theta3) -sind(theta3) ; ...
      0 sind(theta3) cosd(theta3)] ;

Ry3 = [cosd(theta3)   0 sind(theta3) ; ...
          0         1     0       ; ...
      -sind(theta3)  0 cosd(theta3)] ;

Rz3 = [cosd(theta3) -sind(theta3)  0 ;...
      sind(theta3)  cosd(theta3)  0 ;...
          0             0       1];

R3 = Ro*Ry3


printf('Operador M es el punto que se desplazara respecto a los ejes de rotación\n');

%Rotacion en base a Operador Q%         
%Pregunta 1.



R1_Q = Ro*Rz1


%Rotacion en pase a Operador M%         
%Pregunta 2.


R2_Q = R1*Ry2

%Rotacion en pase a Operador M%         
%Pregunta 3.


R3_Q = Ro*Ry3


printf('La orientación final del objeto se encunetra en R3_Q\n');
