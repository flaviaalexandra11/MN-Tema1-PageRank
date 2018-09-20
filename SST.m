% Popescu Flavia-Alexandra 311CD

function x = SST(A, b)
% rezolva un sistem superior triunghiular
  
  % dimensiunea matricei
  [n n] = size(A);
  x = zeros(n, 1);
  
  % pentru fiecare rand (ecuatie)
  for i = n: -1 : 1
    % calculam s stiind solutiile aflate pana la pasul curent
    s = 0;
    for j = i+1 : n
      s = s + A(i, j)*x(j,1);
    endfor
    %solutia ecuatiei curente    
    x(i,1) = (b(i,1) - s)/A(i,i);
  endfor
  
endfunction