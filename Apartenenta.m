% Popescu Flavia-Alexandra 311CD

function y = Apartenenta(x, val1, val2)
	% Functia care primeste ca parametrii x, val1, val2 si care calculeaza valoarea functiei membru in punctul x.
	% Stim ca 0 <= x <= 1

  %punem conditiile de continuitate si calculam limitele laterale
  %ls(val1) = ld(val1) => a*val1+b = 0 => b = -a*val1
  %ls(val2) = ld(val2) => a*val2+b = 1 => a*(val2 - val1) = 1
  
  a = 1 / (val2 - val1);
  b = - a * val1; 
  
  n = length(x);
  
  for i = 1 : n
    % x(i) e in [0, val1)
    if x(i) < val1
      y(i) = 0;
    endif
    %x(i) e in [val1, val2]
    if x(i) >= val1 && x(i) <= val2
      y(i) = a * x(i) +b;
    endif
    %x(i) e in [val2, inf)
    if x(i) > val2
     y(i) = 1;
    endif
  endfor
  
endfunction
 