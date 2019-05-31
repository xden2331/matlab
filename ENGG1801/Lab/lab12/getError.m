function error = getError(x, y, coefs)
    y_hat = polyval(coefs, x);
    diffs = y-y_hat;
    squareDiff = diffs.^2;
    error = sum(squareDiff);
end