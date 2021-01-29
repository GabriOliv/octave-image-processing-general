%Funcao de Borda Interna

function B = bord_blck_in(A,percent)
%A = Images
%percent = Porcentagem

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
  bord = int32(bord)
  %Duplica Imagem
  B = A;

%Cria Borda
  for i = 0:bord
    for j = 1:o
      B(:,i+1,j) = 0;
      B(i+1,:,j) = 0;
      B(:,(n-i),j) = 0;
      B((m-i),:,j) = 0;
    endfor
  endfor

%Mostra Inicial/Final
  subplot (2, 1, 1)
  imshow(A);
  subplot (2, 1, 2)
  imshow(B);

endfunction
