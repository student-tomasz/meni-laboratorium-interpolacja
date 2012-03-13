function [ ] = lagrange ( x, y )

n = length(x)-1; % stopien wielomianu
X = ones(n+1);
for i=1:n+1
    X(i,:) = (X(i,:)*x(i)) .^ (n:-1:0);
end
a = linsolve(X,y');

xx = linspace(x(1), x(length(x)), 100*length(x));
yy = polyval(a, xx);

plot(x, y, 'ro', xx, yy, 'b-');
grid on;
legend('Punkty pomiarowe', 'Interpolacja Lagrange''a');
title('Wykorzystanie interpolacji Lagrange''a');

end
