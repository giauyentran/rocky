% Parameters
V_step = 300;

syms K tau s
M_s = (K/tau)/(s+(1)/(tau))
F = M_s * (V_step)/(s)

ilaplace(F)