R = [1.42 2.66 -5.25 0.49 3.48]
J = [-0.23 -1.63 12.16 4.97 6.48]
figure
plot([0.1 0.3 0.6 1 1.5], R, 'LineWidth', 2)
hold on
plot([0.1 0.3 0.6 1 1.5], J, 'LineWidth', 2)
hold off
legend({'R(t)','J(t)'},'Location','northeast')
