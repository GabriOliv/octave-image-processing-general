%Funcao de Normalizacao de Imagem
function D = img_mat_normaliz(A)
%   A -> Imagem Processada

    %Dimensions
    [m,n,o] = size(A);

    %Gray Image
    B = rgb2gray(A);
    %Imagem Intermediaria
    C = B;
    %Imagem Final
    D = B;

    min = 255;
    max = 0;
    %Procura de Max e Min
    for i = 1:m
        for j = 1:n
            t1 = C(i,j);
            if(min > C(i,j))
                min = C(i,j);
            end
            if(max < C(i,j))
                max = C(i,j);
            end
        end
    end
    %Normalizacao
    for i = 1:m
        for j = 1:n
            D(i,j) = ((255)/(max-min)) * (C(i,j)-min);
        end
    end

    %Plot 
      %Inicial
      subplot (2, 2, 1)
      imshow(A);
      %Gray
      subplot (2, 2, 2)
      imshow(B);
      %Intermedia
      subplot (2, 2, 3)
      imshow(C);
      %Final
      subplot (2, 2, 4)
      imshow(D);
end

