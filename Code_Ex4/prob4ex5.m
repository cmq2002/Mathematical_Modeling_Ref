R = [2 6.1 -9.66 -3.8 -4.1]
J = [1.27 2.87 -3.64 -1.17 -0.94]
figure
plot([0.1 0.3 0.6 1 1.5], R, 'LineWidth', 2)
hold on
plot([0.1 0.3 0.6 1 1.5], J, 'LineWidth', 2)
hold off
legend({'R(t)','J(t)'},'Location','northeast')
