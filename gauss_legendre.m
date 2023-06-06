%% Funktion zu Näherung des Integrals der Funktion f auf dem Intervall [a,b] mit

% Input:    - k:        Grad des Interpolationspolynom 
%           - a, b:     definiert das Intervall [a,b] mit a < b   
%           - f:        f(x) Funktion abhängig von x       
%           - n:        Anzahl der aequidistanten Teilintervalle auf [a,b]
%
% Output:   Wert I_k :  Abschätzung für den Wert des k-ten Integrales von f in
%                       dem Intervall [a,b] 

function I_k = gauss_legendre(k,a,b,f,n)
  
  %Check if a is smaller than b
  if a >= b
    error('Error - Intervall [a,b] falsch definiert! Es muss gelten a < b, nicht a >= b');
  end
  
  %Declaration of Outputvariable, weightfunction and root of orthogonalpol. x
  I_k = 0;
  lambda = 1;
  stx = 0;
  
  %Manual initialisation of the weights with the values from 'Blatt6 6.2'
  if (k==1)
    lambda = [1/2, 1/2];
    stx = [-sqrt(1/3), sqrt(1/3)];
  else if (k==2)
    lambda = [5/18, 4/9, 5/18];
    stx = [-sqrt(3/5), 0, sqrt(3/5)];
  end
end
  
  %Declaration and initialisation of length of interval a and b
  h = (b-a)/n;
  
  %For-loop for summation of all subintervals
  for i=1:n
    h = (b-a)/i;
    %Gaussian-legendre quadrature formula
    I_k +=  0.5*h .* sum(lambda .* f( 0.5*h .* stx + 0.5*(b+a)/i)) ;
  endfor
endfunction