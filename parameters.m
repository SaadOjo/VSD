l_f = 0.5;     % length between front wheel and center of mass
l_r = 0.5;     % length between rear wheel and center of mass

epsilon = 27.72*pi/180; % camber angle

J_z = 40;      % yaw intertia
J_s = 0.41;    % steering intertia
r = 0.278;
t_n = r*sin(epsilon);     % normal trail

M = 274;
g = 9.81;
N_f = M*g/2;     % vertical load of front tyre (approximation, should be dynamic)
N_r = M*g/2;     % vertical load of rear tyre (approximation, should be dynamic)

k_af = 12.36;    % cornering stiffness front
k_ar = 11;    % cornering stiffness rear

v = 50/3.6; %vehicle speed

c_min = 16;
c_max = 44;
c  = c_max;

delta_i = 0;
%delta_i = 10*pi/180;
