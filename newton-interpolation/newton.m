function [ ] = newton ( x, y )

xx = linspace(x(1), x(length(x)), 100*length(x));
yy = newton_polyval(x, newton_coeffs(x, y), xx);

plot(x, y, 'ro', xx, yy, 'b-');
grid on;
legend('Punkty pomiarowe', 'Interpolacja Newtona');
title('Wykorzystanie interpolacji Newtona');

end
