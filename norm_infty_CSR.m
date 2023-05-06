%% Funktion zur Ermittlung der Zeilensummennorm ||.||_inf

% Input:    - A :     non-zero-entry vector  
%           - IA:     row pattern vector
%           - JA:     column index vector

% Output:   Wert max_inf :    maximale zahl der aufsummierten zeilen elemente

function max_inf = norm_infty_CSR(A,IA,JA)
  %Decleration and Initialization of Value vector B and max_inf
  B(length(IA)) = 0;
  max_inf = 0;
  count = 0;
  
  
  for i = 2:length(IA)
    
    %evaluating difference from i-1-th and i-th element of the row pattern vector
    m = abs(IA(i-1)-IA(i));
    
    if m != 0
      
      %Summation of all Elements of a row
      for j = 1:m
        
        %For the summation we use a trick, where we increment a counter by one, store that in the "counter" variable
        %and don't reset the information (we don't use j because we would "get lost" in the vector A)
        count++;
        
        %Sum all row elements into B
        B(i) += abs(A(count));
      endfor
      
      %Checking all Elements of B(i) and selecting the biggest
      if max_inf < B(i)
        max_inf = B(i);
      endif
      
    endif
  endfor
endfunction
