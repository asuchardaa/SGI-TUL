clc; echo off; clear all;
% úloha 1 -> složkový tvar a obraz v komplexní rovině
z = ((1-i)*((sqrt(3))+i))/(1-i*sqrt(3));
z_real = real(z);
z_img = imag(z);
plot(z_real,z_img,'ro')
title("Graf úlohy 1");
xlabel("osa x (reálná část)")
ylabel("osa y (img část")
grid on

% úloha 2 -> gonio a exp tvar
z = -2*sqrt(3)+2*i;
z_real = real(z);
z_img = imag(z);
abs_z = abs(sqrt(z_real^2+z_img^2));
% acos se pojí s reálnou složkou, asin se pojí s imaginární složkou
phi_z = acos(z_real/abs_z);
% goniometrický tvar
gonio_z = (abs_z*(cos(phi_z)+i*sin(phi_z)))
% exponenciální tvar
exp_z = (abs_z * exp(i*phi_z))

% úloha 3 -> z^8
z_3 = ((-1/2)-((sqrt(3)/2)*i));
z3_real = real(z_3);
z3_img = imag(z_3);
abs_z3 = abs(sqrt(z3_real^2+z3_img^2));
phi_z3 = acos(z3_real/abs_z3);
z_3 = ((abs_z3^8)*exp(i*phi_z3*8))

% úloha 4 -> rovnice v oboru komplexnich čísel
syms a;
a_rovnice = 3*a^2 - 7*a + 5 == 0;
root = vpasolve(a_rovnice)

% úloha 5 -> Moivreova věta
x = 1+z^8; % 1 = i^4
n = 8;
x_real = real(x);
x_img = imag(x);
x_abs = abs(sqrt(x_real^2+x_img^2));
x_phi = acos(x_real/x_abs);
for k = 1:1:n-1
    koreny = x_abs^(1/n)*exp(i*((x_phi+2*k*pi)/(n)))
end

% úloha 6 -> absolutní hodnota
%z = (1-3*i)*(2+2*i);
z1 = 1-3*i;
z2 = 2+2*i;
z1_2 = 1*2 + 1*2*i + (-3)*2*i + (-3)*2*i^2;
z6_real = real(z1_2);
z6_img = imag(z1_2);
z6_abs = abs(sqrt(z6_real^2+z6_img^2))

% úloha 7 -> Komplexně sdružené číslo
z = 2*i-3*i*(1+2*i)^2-4*(2-4*i)
komplex_z = 4-27*i
% popř. conj (:
