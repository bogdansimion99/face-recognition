function task5()
    A = double(imread('image2.gif'));
    [m n] = size(A);
    [A_k S] = task3('image2.gif', min(m, n));
    f = diag(S);
    figura_1 = figure(1);
    plot(1 : min(m, n), f, '-b');
    print(figura_1, "task5-figura1.jpg");
    k = min(m, n);
    suma = sum(S(:));
    for i = 1 : k
        f(i) = sum(sum(S(1 : i, 1 : i))) / suma;
    endfor
    figura_2 = figure(2);
    plot(1 : min(m, n), f, '-b');
    print(figura_2, "task5-figura2.jpg");
    for k = 1 : min(m, n)
        [A_k S] = task3('image2.gif', k);
        aux = (A - A_k) .^ 2;
        f(k) = sum(aux(:)) / (m * n);
        %disp(k);
    endfor
    figura_3 = figure(3);
    plot(1 : min(m, n), f, '-b');
    print(figura_3, "task5-figura3.jpg");
    for k = 1 : min(m, n)
        f(k) = (2 * k + 1) / n;
    endfor
    figura_4 = figure(4);
    plot(1 : min(m, n), f, '-b');
    print(figura_4, "task5-figura4.jpg");
    A = double(imread('image4.gif'));
    [m n] = size(A);
    [A_k S] = task3('image4.gif', min(m, n));
    f = diag(S);
    figura_5 = figure(5);
    plot(1 : min(m, n), f, '-b');
    print(figura_5, "task5-figura5.jpg");
    k = min(m, n);
    suma = sum(S(:));
    for i = 1 : k
        f(i) = sum(sum(S(1 : i, 1 : i))) / suma;
    endfor
    figura_6 = figure(6);
    plot(1 : min(m, n), f, '-b');
    print(figura_6, "task5-figura6.jpg");
    for k = 1 : min(m, n)
        [A_k S] = task3('image4.gif', k);
        aux = (A - A_k) .^ 2;
        f(k) = sum(aux(:)) / (m * n);
        %disp(k);
    endfor
    figura_7 = figure(7);
    plot(1 : min(m, n), f, '-b');
    print(figura_7, "task5-figura7.jpg");
    for k = 1 : min(m, n)
        f(k) = (2 * k + 1) / n;
    endfor
    figura_8 = figure(8);
    plot(1 : min(m, n), f, '-b');
    print(figura_8, "task5-figura8.jpg");
endfunction