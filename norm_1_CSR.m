%% Funktion zur Ermittlung der Spaltensummennorm ||.||_1 

% Input:    - A :     non-zero-entry vector  
%           - IA:     row pattern vector
%           - JA:     column index vector

% Output:   Wert max_1 :    maximale zahl der aufsummierten spalten elemente

function max_1 = norm_1_CSR(A, IA, JA)
  #Declaration of Value-vector B and max_1
  B(length(JA)) = 0;
  max_1 = 0;
  
  #adding all elements of A per column together and giving result to B
  for i = 1:length(A)
      B(JA(i)) += abs(A(i));
  endfor
  
  #Checking all elements of B and taking max
  for i = 1:length(B)
    if max_1 < B(i)
        max_1 = B(i);
     endif
  endfor 
endfunction
