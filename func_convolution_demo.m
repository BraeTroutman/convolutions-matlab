%% Plot the triangle function
% create our domain
x = linspace(-4,4, 16384);

%create our range
y = 0*x;
ind = x >= -1 & x <=0;
y(ind) = 1 + x(ind);
ind = x >= 0 & x <= 1;
y(ind) = 1-x(ind);

% plot our triangle function
figure;
plot(x, y, 'linewidth', 2);
ylim([0 1.5]);
set(gca, 'fontsize', 14, 'fontweight', 'bold');
grid on;
xlabel('x');
ylabel('f(x)');
title('Triangle Function f(x)');

%% Convolute the triangle with itself and plot it
z = median(diff(x))*conv(y,y);

figure, plot(z, 'linewidth', 2, 'Color', 'green');
