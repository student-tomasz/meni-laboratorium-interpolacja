function [ yy ] = newton_polyval(  x_, b, xx )

yy = zeros(size(xx));
for i = 1:length(xx)
    yy(i) = 0;
    for n = 1:length(b)
        yy(i) = yy(i) + b(n) * newton_basis(x_,n,xx(i)); 
    end
end

end
