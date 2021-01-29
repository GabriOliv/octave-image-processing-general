%Funcao de Operacao com Imagens
function D = img_mat_opera(A,b,x)
% EX: >> img_mat_opera(a,2,0);

  % A Imagem Bruta     Ex: imread("002.jpg")
  % b Numero usado nas Operaoes
  % x Simbolo da Operação
        %0 Multiplica imagem com b
        %1 Divide     imagem com b
        %2 Soma       imagem com b
        %3 Subtrai    imagem com b

    %Gray se for Colorida
    B = rgb2gray(A);

    %Operacao com Matriz Imagem
    if(x == 0)
        D = B * b;          C = A * b;
        subplot (2, 1, 1);  imshow(D);  title(strcat("Gray [ (A) *  (", num2str(b),") ]"));
        subplot (2, 1, 2);  imshow(C);  title(strcat("RGB [ (A) *  (", num2str(b),") ]"));

    elseif (x == 1)
        D = B / b;          C = A / b;
        subplot (2, 1, 1);  imshow(D);  title(strcat("Gray [ (A) /  (", num2str(b),") ]"));
        subplot (2, 1, 2);  imshow(C);  title(strcat("RGB [ (A) /  (", num2str(b),") ]"));

    elseif (x == 2)
        D = B + b;          C = A + b;
        subplot (2, 1, 1);  imshow(D);  title(strcat("Gray [ (A) +  (", num2str(b),") ]"));
        subplot (2, 1, 2);  imshow(C);  title(strcat("RGB [ (A) +  (", num2str(b),") ]"));

    elseif (x == 3)
        D = B - b;          C = A - b;
        subplot (2, 1, 1);  imshow(D);  title(strcat("Gray [ (A) -  (", num2str(b),") ]"));
        subplot (2, 1, 2);  imshow(C);  title(strcat("RGB [ (A) -  (", num2str(b),") ]"));
    end
end
