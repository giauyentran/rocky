%define system parameters
t = 0.1122;
g = -9.8;
K = 0.001589;
m = 0.53;  %kg
period = 1.32;
omega_n = 1/period * 2 *pi
l = -g/omega_n^2

%defein controll parameters
Kp = 5084.5;
Ki = 24807;
Jp = 500.4405;
Ji = -1810.8;
Ci = -766.6956; 

%run simulink model
model



