clear; clf; close all
set(0, 'DefaultLineLineWidth', 0.5);
my_color = [16 161 156]./255;
my_gray = [156 151 154]./255;

period = 20 % ms
sampling_rate = 1000/period;

data = csvread("motor_data_2.csv");
A = 1:size(data)
data(:,3) = repmat(A, 1, 1)./sampling_rate;
right_motor = data(:,1)
left_motor = data(:,2)
time = data(:,3)

hold on;
plot(time, right_motor, "LineWidth", 1, "Color", my_gray)
plot(time, left_motor, "LineWidth", 1, "Color", my_color)
title("Motor speeds over time"); legend("Right motor", "Left motor"); grid minor
xlabel("Time (s)"); ylabel("Motor Speed (rpm)")