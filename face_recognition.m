function [min_dist output_img_index] = face_recognition(image_path, m, A, eigenfaces, pr_img)
    image_matrix = double(rgb2gray(imread(image_path)));
    [m1 n] = size(image_matrix);
    contor = 0;
    for i = 1 : m1
        for j = 1 : n
            contor++;
            v(contor) = image_matrix(i, j);
        endfor
    endfor
    v = v';
    v = v - m;
    PrTestImg = eigenfaces' * v;
    min_dist = norm(pr_img(:, 1) - PrTestImg);
    output_img_index = 1;
    [m1 n1] = size(pr_img);
    for i = 2 : m1
        dist = norm(pr_img(:, i) - PrTestImg);
        if dist < min_dist
            min_dist = dist;
            output_img_index = i;
        endif
    endfor
endfunction