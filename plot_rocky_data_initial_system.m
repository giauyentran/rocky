clear; clf; close all

my_color = [16 161 156]./255;
my_gray = [156 151 154]./255;

data = readtable("rocky_data_initial_system.csv")
time = (data.Var1)./1000 - 15.151 -12.55;
angle_rad = data.Var2;
dist_left = data.Var3;
dist_right = data.Var4;
speed_left = data.Var5;
speed_right = data.Var6;

figure(); hold on; grid minor; colororder({'black','black'})
yyaxis left; ylabel("Distance (m)");
plot(time, dist_left, "-", LineWidth = 1.5, Color = my_gray)
plot(time, dist_right, "-", LineWidth = 1.5, Color = my_color)
yyaxis right;
plot(time, speed_left, ":", LineWidth = 1.75, Color = my_gray)
plot(time, speed_right, ":", LineWidth = 1.75, Color = my_color)
yline(0); title("Linear Wheel Distance and Velocity over Time");
xlabel("Time (s)"); ylabel("Velocity (m/s)"); xlim([0 6])
legend("Left Wheel Position", "Right Wheel Position", "Left Wheel Velocity", "Right Wheel Velocity")

figure(); hold on;
plot(time, angle_rad.*(180/2*pi), Linewidth = 2, Color = my_color)
grid minor; title("Angle Over Time");
xlabel("Time (s)"); ylabel("Angle (Degrees)"); xlim([0 6])

