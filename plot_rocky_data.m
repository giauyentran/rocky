clear; clf; close all

my_color = [16 161 156]./255;
my_gray = [156 151 154]./255;

data = readtable("rocky_data.csv")
time = (data.Var1)./1000 - 15.151;
angle_rad = data.Var2;
dist_left = data.Var3;
dist_right = data.Var4;
speed_left = data.Var5;
speed_right = data.Var6;

figure(); hold on; grid minor; colororder({'black','black'})
yyaxis left; ylabel("Distance (m)");
plot(time(1:195), dist_left(1:195), "-", LineWidth = 1.5, Color = my_gray)
plot(time(1:195), dist_right(1:195), "-", LineWidth = 1.5, Color = my_color)
yyaxis right;
plot(time(1:195), speed_left(1:195), ":", LineWidth = 1.75, Color = my_gray)
plot(time(1:195), speed_right(1:195), ":", LineWidth = 1.75, Color = my_color)
yline(0); title("Linear Wheel Distance and Velocity over Time"); 
xlabel("Time (s)"); ylabel("Velocity (m/s)"); xlim([0 20.212])
legend("Left Wheel Position", "Right Wheel Position", "Left Wheel Velocity", "Right Wheel Velocity")

figure(); hold on;
plot(time(1:195), angle_rad(1:195).*(180/2*pi), Linewidth = 2, Color = my_color)
grid minor; title("Angle Over Time");
xlabel("Time (s)"); ylabel("Angle (Degrees)"); xlim([0 20.212])

