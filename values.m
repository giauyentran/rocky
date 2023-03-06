t = 0.1122;
g = -9.8;
K = 0.001589;
m = 1.2;
l = 0.5;


% syms H(s) K tau v_step
% % syms H(s) tau K
% H = v_step/s*(K/tau)/(s+1/tau);
% w = simplify(ilaplace(H))
% v_step = 300;
% w = subs(w)
% K = 0.001589;
% tau = 0.1122;
% w = subs(w);
% 
% 
% 
% clf
% fplot(w, [0 5]);
% hold on
% plot(time, left_motor)


model