% Popescu Flavia-Alexandra 311CD

% citeste datele din fisier
% retruneaza valorile citite, nr de legaturi cu alte noduri si matricea de adiacenta 

function [inp, nod, A, val1, val2] = readAdiacMat(nume)
  
  %citim datele
  f = fopen(nume, 'r');
  inp = fscanf(f, '%lf');
  
  %nr de noduri
  N = inp(1);
  
  %matrice de adiacenta
  A = zeros(N,N);
  
  %vector cu nr de legaturi pentru fiecare nod
  noduri = zeros(N, 1);
  
  %pozitia din inp la care se alfa numele nodului
  index = 2; 
  
  %pozitia din vectorul noduri 
  i = 1;
  
  %linia din A
  lin = 1;
  
  %cat timp nu sunt am depasit nr noduri  
  while lin < N   
  
    %linia din matricea de adiacenta = nodul curent
    lin = inp(index);
    
    %actualizam nr de noduri 
    index += 1;
    nrNoduri = inp(index);
    
    nod(i) = nrNoduri;
    i++;
    index += 1;
  
    for j = 1 : nrNoduri
      A(lin, inp(index)) = 1;
      index += 1;
    endfor
  endwhile
  
  %nu vom lua in considerare legaturile unei pagini catre ea insasi
  for i = 1 : N
    if A(i,i) ~= 0
      nod(i) -=1;
      A(i, i) = 0;
    endif
  endfor
  
  n = length(inp);
  
  val1 = inp(n-1);
  val2 = inp(n);
  
endfunction  