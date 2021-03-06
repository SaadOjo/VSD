wheel_base = 1.44;
cg_ratio = 0.4;
l_f = wheel_base*cg_ratio;     % length between front wheel and center of mass
l_r = wheel_base*(1 - cg_ratio);     % length between rear wheel and center of mass

epsilon = 27.72*pi/180; % camber angle

J_z = 30;      % yaw intertia
J_s = 0.41;    % steering intertia
r = 0.278;
t_n = r*sin(epsilon);     % normal trail

M = 274.8;
g = 9.81;

N_f = M*g/2;     % vertical load of front tyre (approximation, should be dynamic)
N_r = M*g/2;     % vertical load of rear tyre (approximation, should be dynamic)

k_af = 12.36;    % cornering stiffness front
k_ar = 11;    % cornering stiffness rear

v = 140/3.6; %vehicle speed

c_min = 1.6;
c_max = 4.4;

calculate_matrices;
delta_i = 0;
%delta_i = 10*pi/180;
