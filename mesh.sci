clc;
clear;
scf(1);
NameOfNetwork = "Mesh Topology";
n = 6;
R = 300;
cx = 400;
cy = 600;
theta = linspace(0, 2*%pi, n+1);
theta($) = [];
x = cx + R * cos(theta);
y = cy + R * sin(theta);
for i = 1:n
    for j = i+1:n
        plot([x(i) x(j)], [y(i) y(j)], 'k-');
    end
end
plot(x, y, 'ro');
a = gca();
a.axes_visible = "on";
title(NameOfNetwork, "X-Nodes", "Y-Nodes");
