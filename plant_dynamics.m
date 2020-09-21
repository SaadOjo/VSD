function x_dot_dot = plant_dynamics(states,T_s)

global M R K Q

x = states(1:2);
x_dot = states(3:4);

x_dot_dot = inv(M)*(Q*T_s - K*x - R*x_dot);

end

