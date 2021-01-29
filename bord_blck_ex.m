%Funcao de Borda Externa
function B = bord_blck_ex(A,percent)

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
  x = m+(2*bord)
  y = n+(2*bord)

%Cria Matriz Final
  %Duplica Imagem
  B = A;
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

%Mostra Inicial/Final
  subplot (2, 1, 1)
  imshow(A);
  subplot (2, 1, 2)
  imshow(B);

endfunction
