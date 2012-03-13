function [ b ] = newton_coeffs( x, y )

n = length(x)-1;
B = zeros(n+1);
for i = 1:n+1
    B(i,1) = y(i);
    for j = 2:i
        B(i,j) = (B(i,j-1) - B(i-1,j-1)) / (x(i) - x(i-j+1));
    end
end
b = diag(B);

end
