%% Funktion 
%
% Input:    - full_matrix :     Beliebige nxm Matrix   

% Output:   [A,IA,JA]     :     Liste der Vektoren A, IA und JA
%           A             :     non-zero-entry vector
%           IA            :     row pattern vector 
%           JA            :     column index vector

function [A,IA,JA] = sparse_CSR(full_matrix)
  %Initialize output target IA, non-zero-entry(nze) vector Ab and coloum index JAb
  IA(1)=1;
  Ab(1,1)=0;
  JAb(1,1)=0;
  
  %double for-loop to get through every element of full_matrix
  for i = 1:size(full_matrix,1)
    
    %Declare and initialize counter for nze per row
    count = 0;
    
    for j = 1:size(full_matrix,2)
      
      %if matrix element is non-zero
      if full_matrix(i,j) != 0
        
        %Grow matrix Ab by 1 and insert matrix element
        Ab(1,length(Ab)+1) = full_matrix(i,j);
        
        %Grow matrix JAb by 1 and insert corresponding column of nze
        JAb(1,length(JAb)+1) = j;
        
        %increase count by 1
        count++;
      endif
    endfor
    
    %i+1 row pattern elemtent is i-th row pattern element + count
    IA(i+1) = IA(i)+count;
  endfor
  
  %prune Arrays Ab and JAb by first element and insert those Arrays into target Arrays A and JA
  A = Ab(2:end);
  JA = JAb(2:end);
end