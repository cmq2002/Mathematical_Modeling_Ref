
R = [0.01 0.076 0.27 0.74 1.75]
J = [0.99 1 1.03 1.11 1.25]
figure
plot([0.1 0.3 0.6 1 1.5], R, 'LineWidth', 2)
hold on
plot([0.1 0.3 0.6 1 1.5], J, 'LineWidth', 2)
hold off
legend({'R(t)','J(t)'},'Location','northeast')
