% Require packages:
% Package Name  | Version |
%      control  |   3.2.0 |
%        image  |  2.12.0 |
%       signal  |   1.4.1 |
% EN - use the terminal command pkg to install
% PT - use o comando de terminal pkg para instalar

function K = img_plot_dct(A)

  RGB = A;
  I = rgb2gray(RGB);

  J = dct2(I);

  J(abs(J) < 10) = 0;

  K = idct2(J);
  K = uint8(K);

  %Plot
    subplot (221)
    imshow(I);

    subplot (223)
    imshow(K);

    subplot (222)
    imshow(J);

endfunction
