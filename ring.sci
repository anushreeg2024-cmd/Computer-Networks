clc;
clear;
scf(1);
NameOfNetwork = "Ring Topology";
n = 7;
R = 200;
cx = 400;
cy = 800;
theta = linspace(0, 2*%pi, n+1);
theta($) = [];
x = cx + R * cos(theta);
y = cy + R * sin(theta);
for i = 1:n-1
    plot([x(i) x(i+1)], [y(i) y(i+1)], 'k-');
end
plot([x(n) x(1)], [y(n) y(1)], 'k-');
plot(x, y, 'ro');
a = gca();
a.axes_visible = "on";
title(NameOfNetwork, "X-Nodes", "Y-Nodes");
