clc;
clear;
scf(1);
NameOfNetwork = "Star Topology";
n = 12;
cx = 200;
cy = 400;
R = 100;
theta = linspace(0, 2*%pi, n);
x_outer = cx + R * cos(theta(1:$-1));
y_outer = cy + R * sin(theta(1:$-1));
for i = 1:length(x_outer)
    plot([cx x_outer(i)], [cy y_outer(i)], 'k-');
end
plot(cx, cy, 'bs', 'MarkerSize', 10);
plot(x_outer, y_outer, 'ro');
a = gca();
a.axes_visible = "on";
title(NameOfNetwork, "X-Nodes", "Y-Nodes");
