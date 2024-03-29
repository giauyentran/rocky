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
right_test = [right_motor time]
left_test = [left_motor time]
combined_data = [right_test; left_test]

[fit_all, gof_all] = fit(combined_data(:,2), combined_data(:,1), 'exp2')

figure
hold on
plot(time, right_motor, "LineWidth", 0.5, "Color", my_gray)
plot(time, left_motor, "LineWidth", 0.5, "Color", my_color)
plot(fit_all, 'r')
legend('Right Motor', 'Left Motor', 'Curve Fit', 'location', 'southeast')
title("Motor speeds over time"); legend("Right motor", "Left motor"); grid minor
xlabel("Time (s)"); ylabel("Velocity (m/s)")
legend('Right Motor Data', 'Left Motor Data', 'Curve Fit')

print('-dsvg', 'plots/motordata.svg')

