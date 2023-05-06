function C=matrix_product(A,B)
  %blablabla
  
  %Init
  [l, m]=size(A);
  [m, k]=size(B);
  C=zeros(l,k);
  
  for i=1:m
    C(:,i)= linear_map(A, B(:,i));
  endfor
endfunction
