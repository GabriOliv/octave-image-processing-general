
function B = img_max_square(A)
% EX: >> newimage = img_max_square(imread("001.jpg"));

% A -> Imagem Bruta     Ex: imread("002.jpg")

  B = A;

  [m,n,o] = size(B);

  if (m > n)
    
    B( [ ( n + 1 ) : m ] , : )  = [];
    printf ("\t\t ... Resized\n");
    
  elseif (m < n)
    
    B( : , [ ( m + 1 ) : n ] )  = [];
    printf ("\t\t ... Resized\n");
    
  elseif (m == n)
    printf ("\t\t Already a Square\n");
  endif
  
%Mostra Inicial/Final
  subplot (2, 1, 1);  imshow(A);  title("Original");
  subplot (2, 1, 2);  imshow(B);  title("Resized");

endfunction  
  
