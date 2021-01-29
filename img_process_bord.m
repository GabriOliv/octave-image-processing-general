%Funcao de Borda

  %   A -> Imagem Processada
  %     Ex: (imread('1523929968020.jpg'))

  %   percent -> Porcentagem da Borda em Relacao a Imagem
  %     Ex: 10

  %   C -> se 0 Interna , se 1 Externa
  %     Ex: 1

function B = img_process_bord(A,percent,C)

%Retorna Dimensao da Imagem
  [m,n,o] = size(A);
%Porcentagem de Borda
  bord = 0;
  if (m <= n)
    bord = (percent/100) * m;
  elseif (n <= m)
    bord = (percent/100) * n;
  endif

  %Transforma em Valor Inteiro
  bord = int32(bord);
  x = m+(2*bord);
  y = n+(2*bord);
  %Duplica Imagem
  B = A;

  %Funcao de Borda Interna
  if (C == 0)
    %Cria Borda
    for i = 0:bord
      for j = 1:o
        B(:,i+1,j) = 0;
        B(i+1,:,j) = 0;
        B(:,(n-i),j) = 0;
        B((m-i),:,j) = 0;
      endfor
    endfor

  %Funcao de Borda Externa
  elseif (C == 1)
    %Aumenta a Dimensao de Borda
    B(x, y , o) = 0;
    %Limpa Imagem
    B(:,:,:) = 0;

    %Copia imagem para o Centro
    for i = 1:m
      for j = 1:n
        B(bord+i , bord+j , :) = A(i,j,:);
      endfor
    endfor
   
  %Funcao Indefinida
  else
    error ("img_process_Borda: Tipo n�o Definido");

  endif

%Mostra Inicial/Final
  subplot (2, 1, 1)
  imshow(A);
  subplot (2, 1, 2)
  imshow(B);

endfunction
