function [ p ] = newton_basis( x_, n, x )

p = 1;
for i = 1:n-1
    p = p * (x - x_(i));
end

end
