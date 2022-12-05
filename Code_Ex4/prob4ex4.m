R = [-2.48 -4.47 -15.76 5.43 0.25]
J = [0.84 0.13 -5.32 5.28 1.75]
figure
plot([0.1 0.3 0.6 1 1.5], R, 'LineWidth', 2)
hold on
plot([0.1 0.3 0.6 1 1.5], J, 'LineWidth', 2)
hold off
legend({'R(t)','J(t)'},'Location','northeast')
