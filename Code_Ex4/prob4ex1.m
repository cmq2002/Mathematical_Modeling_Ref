R = [11 6 4.33 3.5 3]
J = [-8.09 -3.17 -1.56 -0.79 -0.33]
figure
plot([0.1 0.2 0.3 0.4 0.5], R, 'LineWidth', 2)
hold on
plot([0.1 0.2 0.3 0.4 0.5], J, 'LineWidth', 2)
hold off
legend({'R(t)','J(t)'},'Location','northeast')
