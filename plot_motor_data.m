clear; clf; close all
set(0, 'DefaultLineLineWidth', 0.5);
my_color = [16 161 156]./255;
my_gray = [156 151 154]./255;

period = 20 % ms
sampling_rate = 1000/period;

data = csvread("motor_data.csv");
A = 1:size(data)
data(:,3) = repmat(A, 1, 1)./sampling_rate;

hold on;
plot(data(:,3), data(:,1), "LineWidth", 1, "Color", my_gray)
plot(data(:,3), data(:,2), "LineWidth", 1, "Color", my_color)
