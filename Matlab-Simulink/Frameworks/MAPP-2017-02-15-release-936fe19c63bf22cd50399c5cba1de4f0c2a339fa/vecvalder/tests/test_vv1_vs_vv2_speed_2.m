function out = test()

    N = 10000;
    %num_indeps = 3;
    tic
    for i=1:1:N
        x_rand = rand(1, 1);
        x_vecvalder = vecvalder(x_rand, [1,1,1]);
        y_vecvalder = exp(x_vecvalder);
    end
    t_vecvalder = toc

    tic
    for i=1:1:N
        x_rand = rand(1, 1);
        x_vv2 = vv2(x_rand, [1,1,1]);
        y_vv2 = exp(x_vv2);
    end
    t_vv2 = toc

    disp(['t_vecvalder = ', num2str(t_vecvalder), 's'])
    disp(['t_vv2 = ', num2str(t_vv2), 's'])

end

