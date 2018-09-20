% Popescu Flavia-Alexandra 311CD

function [N, R] = Iterative(nume, d, eps)
	% Functia care calculeaza matricea R folosind algoritmul iterativ.
	% Intrari:
	%	-> nume: numele fisierului din care se citeste;
	%	-> d: coeficentul d, adica probabilitatea ca un anumit navigator sa continue navigarea (0.85 in cele mai multe cazuri)
	%	-> eps: eruarea care apare in algoritm.
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
  
  unu = ones(N, 1);
  % r = page rank la primul pas
  r = ones(N, 1);
  r = r * (1 / N);
  R = d * M * r + ( (1 - d) / N ) * unu;
   
  %calculam R in functei de r pana cand se atinge precizia dorita
  while norm(R - r) >= eps  
    r = R;
    R = d * M * r + ( (1 - d) / N ) * unu;
  endwhile
  
 endfunction
  
 
