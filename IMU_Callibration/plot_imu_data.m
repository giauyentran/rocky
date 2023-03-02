clear; clf; close all
set(0, 'DefaultLineLineWidth', 0.5);
my_color = [16 161 156]./255;
my_gray = [156 151 154]./255;

period = 50 % ms
sampling_rate = 1000/period; %Hz

data = readtable("swing2.csv");
A = data.Var1(10:end);
t = linspace(0, period*length(A), length(A));

[peaks, idx] = findpeaks(A, t);
swing_period = mean(idx(2:end) - idx(1:end-1))/1000;

figure(1)
clf
hold on
plot(t/1000, A, "linewidth", 1, "color", [0.5 0.6 1])
plot(idx/1000, peaks, ".", "markersize", 15, "color", [0.1 1 0.2])
xlabel("Time (s)")
ylabel("Angle (rad)")
title("IMU Callibration Data", "color", [1 1 1])
text(8, 0.4, "Mean Period = " +num2str(round(swing_period, 2)) + "s", "color", [1 1 1])

grid on
grid minor

 set(gca,'Color', [0.1 0.1 0.1])
    set(gca,'XColor',[1 1 1])
    set(gca,'YColor',[1 1 1])
    set(gca,'ZColor',[1 1 1])
    set(gca,'YColor',[1 1 1])
    set(gcf,'Color','k')
    set(gcf, 'InvertHardcopy', 'off');
print(gcf,'IMU_data.png','-dpng','-r600')


%%

