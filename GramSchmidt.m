% Popescu Flavia-Alexandra 311CD

function invA = GramSchmidt(A)
	% Functia care calculeaza inversa matricii A folosind factorizari Gram-Schmidt
	% Se trateaza fiecare coloana din A in parte, gasim

  [n n] = size(A);
  Q = [];
  % iteram prin fiecare coloana ca sa aflam Q
  for k = 1 : n
    % initializam q cu coloana curenta din A si tinem o copie 
    q = A(1 : n, k);
    cpy = q;
    for j = 1 : k-1
      % prod scalar dintre col lui A si col din Q obtinute la pasii anteriori
      sp = sum(cpy .* Q(:, j));
      % cream vectorii ortogonali 
      q = q - sp * Q(1 : n, j);
    endfor
    % normalizam vectorii
    q = q / norm(q);
    % adaugam vectorii la matrice 
    Q = [Q q];
  endfor

  % matricea superior triunghiulara va fi Q^T * A
  R = Q' * A;
  
  % A*A^-1 = I -> Q*R*A^-1 = I -> rezolvam sistemul R*A^-1 = Q^t
  Q = Q';
  
  % aflam inversa lui A rezolvand un sistem superior triunghiular 
  invA = [];
  for i = 1 : n
    inva = SST(R,Q(1:n, i));
    invA = [invA inva]; 
  endfor

endfunction