% Parameters
V_step = 300;

syms K tau s t
M_s = (K/tau)/(s+(1)/(tau));
F = M_s * (V_step)/(s);

f = ilaplace(F)

% Curve fit from cftool
curve_fit = 0.464*exp(0.03429*t) - 0.604*exp(-13.24*t);
% Approximated curve
curve_fit = 0.464 - 0.604*exp(-13.24*t)

% Create system of equations for parameters
a = [300 0; 0 1/-13.24];
b = [58/125 -331/25];
system_ans = a/b;

K = system_ans(1)
tau = system_ans(2)

