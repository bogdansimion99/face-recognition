function [m A eigenfaces pr_img] = eigenface_core(database_path)
    for i = 1 : 10
        image_path = strcat(database_path, strcat('/', strcat(int2str(i), '.jpg')));
        image_matrix = double(rgb2gray(imread(image_path)));
        [m1 n] = size(image_matrix);
        contor = 0;
        for j = 1 : m1
            for k = 1 : n
                contor++;
                v(contor) = image_matrix(j, k);
            endfor
        endfor
        T(:, i) = v(:);
    endfor
    [m1 n] = size(T);
    for i = 1 : m1
        m(i) = mean(T(i, :));
    endfor
    m = m';
    A = T - m;
    [V lambda] = eig(A' * A);
    [n n] = size(V);
    lambda = diag(lambda);
    for i = 1 : n
        if(lambda(i) < 1)
            V(:, i) = [];
        endif
    endfor
    eigenfaces = A * V;
    pr_img = eigenfaces' * A;
endfunction