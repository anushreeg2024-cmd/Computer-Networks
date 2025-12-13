clc;
clear;
scf(1);
NameOfNetwork = "Bus Topology";
x = [100 100 100 100 100 100 100 100 200 300 400 500 600 300 300];
y = [300 400 500 600 700 800 900 950 300 400 500 600 700 800 900];
plot([100 600], [600 600], 'k-', 'LineWidth', 2);
for i = 1:length(x)
    plot([x(i) x(i)], [y(i) 600], 'k--');
end
plot(x, y, 'ro');
a = gca();
a.axes_visible = "on";
title(NameOfNetwork, "X-Nodes", "Y-Nodes");
