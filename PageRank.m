% Popescu Flavia-Alexandra 311CD

function [R1 R2] = PageRank(nume, d, eps)
	% Calculeaza indicii PageRank pentru cele 3 cerinte
	% Scrie fisierul de iesire nume.out	
  
  [inp, noduri, A, val1, val2] = readAdiacMat(nume);
  [N R1] = Iterative(nume, d, eps);
  
  filename = strcat(nume, '.out');
  
  f = fopen(filename, 'w');
  
  % Cerinta 1
  fprintf(f, "%d\n", N);
  fprintf(f, "%f\n", R1);
  fprintf(f, "\n");
  
  % Cerinta 2
  R2 = Algebraic(nume, d);
  fprintf(f, "%f\n", R2);
  fprintf(f, "\n");
  
  % Cerinta 3
  [PR1 indexes] = sort(R2, "descend");
  PR1 = Apartenenta(PR1, val1, val2);
    
  for i = 1 : N
    fprintf(f, "%d ", i);
    fprintf(f, "%d ", indexes(i));
    fprintf(f, "%f", PR1(i));
    fprintf(f, "\n");
  endfor 
   
  fclose(f);
  
endfunction