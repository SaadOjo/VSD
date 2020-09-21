global M R K Q

M = [J_z, 0;
       0, J_s];
   
R = (1/v)*[N_r*k_ar*(l_r^2) + N_f*k_af*(l_f^2),  -N_f*k_af*l_f*t_n;
           -N_f*k_af*l_f*t_n                  ,  c*v + N_f*k_af*(t_n^2)
          ];
      
K = [N_r*k_ar*l_r - N_f*k_af*l_f,  -N_f*k_af*l_f*cos(epsilon) ;
     N_f*k_af*t_n               ,   N_f*k_af*t_n*cos(epsilon)];

 Q = [0;1];
