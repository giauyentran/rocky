clear; clf; close all
set(0, 'DefaultLineLineWidth', 0.5);
my_color = [16 161 156]./255;
my_gray = [156 151 154]./255;
my_green = [0.1 1 0.2];
my_blue =  [0.5 0.6 1]

period = 50 % ms
sampling_rate = 1000/period; %Hz

data = readtable("swing2.csv");
A = data.Var1(10:end-80);
t = linspace(0, period*length(A), length(A));

[peaks, idx] = findpeaks(A, t);
swing_period = mean(idx(2:end) - idx(1:end-1))/1000;

figure(1)
clf
hold on
plot(t/1000, A, "linewidth", 1, "color", my_blue)
plot(idx/1000, peaks, "r.", "markersize", 15)
xlabel("Time (s)")
ylabel("Angle (rad)")
title("IMU Callibration Data")
text(6, 0.4, "Mean Period = " +num2str(round(swing_period, 2)) + "s")

grid on
grid minor
print('-dsvg', '../plots/imudata.svg')


%%
omega_n = 1/swing_period*2*pi;
g = 9.81;

L1_com = 0.355; %distance from washer to COM
L2_com = 0.191; %distance from wheel to COM
L1_com + L2_com

L_eff = sqrt((g*L1_com/omega_n^2 - L1_com^2) + L2_com^2)
%%
omega_n = 2*pi/1.366
L = g/omega_n^2

