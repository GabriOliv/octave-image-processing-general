%Funcao Equalizacao

function B = equali_img_save( A, n1, n2)
%A Imagem Bruta
%n1 Nome de Savamento da Imagem NAO Equalizada
%n2 Nome de Savamento da Imagem Equalizada

% EX 01 - Salvando o Resultado: 
%    >> A = imread("002.jpg");
%    >> equali_img_save(A,"test_1.png","test_2.png");

% EX 02 - Nao Salvando o Resultado: 
%    >> A = imread("002.jpg");
%    >> equali_img_save(A);

  [m,n,o] = size(A);
  
  if(o > 1)
    A = rgb2gray(A);
  endif

  %Tamanho da Imagem
  [m,n] = size(A);
  %Numero de Pixels
  N = m*n;
  %Numero de Tons
  L = 256;
  %Vetor de Histograma A
  HistA = zeros(1,L);

  %Histograma A
  for i = 1 : m
    for j = 1 : n
      HistA(1 , (A(i,j)+1)) += 1;
    endfor
  endfor

  %Histograma Cumulativo
  HC = 0;
  %Tabela de Substituicao Final
  y = HistA;

  %Funcao de Y
  for i = 1 : L
    HC += HistA(1,i);
    y(1,i) = round(((L-1)/N)*HC);
  endfor

  %Imagem Final
  B = A;

  %Substituicao com Y
  for i = 1 : m
    for j = 1 : n
      B(i,j) = y(1,(B(i,j)+1));
    endfor
  endfor

  %Novo Histograma
  HistB = HistA;

  %Preenchimento do HistB
  for i = 1 : m
    for j = 1 : n
      HistB(1 , (B(i,j)+1)) += 1;
    endfor
  endfor
  
  %Plot Histogramas
  subplot (2, 2, 2);
    bar(HistA);
  subplot (2, 2, 4);
    bar(HistB);
  subplot (2, 2, 1);
    imshow(A);
  subplot (2, 2, 3);
    imshow(B);

  imwrite(A,n1);
  imwrite(B,n2);

endfunction
