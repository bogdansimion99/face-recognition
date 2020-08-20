function [A_k S] = task3(image, k)
    A = double(imread(image));
    [m n] = size(A);
    a = A;
    for i = 1 : m
        miu(i, 1) = sum(a(i, :)) / n;
    endfor
    for i = 1 : m
        for j = 1 : n
            a(i, j) = a(i, j) - miu(i, 1);
        endfor
    endfor
    A = a;
    Z = (A') / sqrt(n - 1);
    [U S V] = svd(Z);
    W = V(1 : m, 1 : k);
    Y = (W') * A;
    A_k = W * Y + miu;
endfunction