function task2()
    A = double(imread('image2.gif'));
    [m n] = size(A);
    [U S V] = svd(A, 'econ');
    for i = 1 : min(m, n)
        f(i) = S(i, i);
    endfor
    figura_1 = figure(1);
    plot(1 : min(m, n), f, '-b');
    print(figura_1, "task2-figura 1.jpg");
    k = min(m, n);
    suma = sum(S(:));
    for i = 1 : k
        f(i) = sum(sum(S(1 : i, 1 : i))) / suma;
    endfor
    figura_2 = figure(2);
    plot(1 : min(m, n), f, '-b');
    print(figura_2, "task2-figura 2.jpg");
    for k = 1 : min(m, n)
        A_k = task1('image2.gif', k);
        aux = (A - A_k) .^ 2;
        f(k) = sum(aux(:)) / (m * n);
    endfor
    figura_3 = figure(3);
    plot(1 : min(m, n), f, '-b');
    print(figura_3, "task2-figura 3.jpg");
    for k = 1 : min(m, n)
        f(k) = (m * k + n * k + k) / (m * n);
    endfor
    figura_4 = figure(4);
    plot(1 : min(m, n), f, '-b');
    print(figura_4, "task2-figura 4.jpg");
	A = double(imread('image4.gif'));
    [m n] = size(A);
    [U S V] = svd(A, 'econ');
    for i = 1 : min(m, n)
        f(i) = S(i, i);
    endfor
    figura_5 = figure(5);
    plot(1 : min(m, n), f, '-b');
    print(figura_5, "task2-figura 5.jpg");
    k = min(m, n);
    suma = sum(S(:));
    for i = 1 : k
        f(i) = sum(sum(S(1 : i, 1 : i))) / suma;
    endfor
    figura_6 = figure(6);
    plot(1 : min(m, n), f, '-b');
    print(figura_6, "task2-figura 6.jpg");
    for k = 1 : min(m, n)
        A_k = task1('image4.gif', k);
        aux = (A - A_k) .^ 2;
        f(k) = sum(aux(:)) / (m * n);
    endfor
    figura_7 = figure(7);
    plot(1 : min(m, n), f, '-b');
    print(figura_7, "task2-figura 7.jpg");
    for k = 1 : min(m, n)
        f(k) = (m * k + n * k + k) / (m * n);
    endfor
    figura_8 = figure(8);
    plot(1 : min(m, n), f, '-b');
    print(figura_8, "task2-figura 8.jpg");
endfunction