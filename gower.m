function g = gower(X, Y)
% g = gower(X, Y), returns the Gower distance of observation points in Y
%     from the sample data X.  X and Y must have the same number of columns.
% The answer would be a column vector, with the length same as the number 
%     of rows in X, that is, size(answer) == [size(X, 1), 1]. 
Y_ = reshape(Y', [1, flip(size(Y))]);
g = min(mean(abs(X - Y_) ./ range(Y, 1), 2), [], 3);
end
% 20190511
