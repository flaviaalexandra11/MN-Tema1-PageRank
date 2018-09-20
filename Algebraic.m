% Popescu Flavia-Alexandra 311CD

function R = Algebraic(nume, d)
	% Functia care calculeaza vectorul PageRank folosind varianta algebrica de calcul.
	% Intrari: 
	%	-> nume: numele fisierului in care se scrie;
	%	-> d: probabilitatea ca un anumit utilizator sa continue navigarea la o pagina urmatoare.
	% Iesiri:
	%	-> R: vectorul de PageRank-uri acordat pentru fiecare pagina.
  
  [inp, noduri, A, val1, val2] = readAdiacMat(nume);
  
  % nr de pagini 
  N = inp(1);
  
  % construim matricea M
  M = zeros(N, N);
   
  for i = 1 : N
    for j = 1 : N
      % daca pagina j este legata de pagina i 
      if A(j,i) == 1
        % M(i,j) = 1 / L(pj)
        M(i, j) = 1 / noduri(j);
      endif
    endfor 
  endfor
  
  I = eye(N);
  unu = ones(N, 1);
  
  % folosim GramSchmidt ca sa aflam aflam inversa 
  toInv = I - d*M;
  inverted = GramSchmidt(toInv);

  % page rankul final
  R = inverted * ((1-d)/N )*unu;
  
endfunction