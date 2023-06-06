function z=linear_map(A,x)
  %blabla
  
  %Initialisierung der Daten
  [m n] = size(A);
  nx=length(x);
  z=zeros(m);
  
  %linear map
  for i=1:m
    z(i)=dot_product(A(i,:)',x);
  endfor
endfunction
