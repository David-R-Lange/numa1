%%Function to solve the curve fitting of a given Matrix and Vector

% Input:    - A       :     nxm Matrix 
%           - b       :     mx1 Vector

% Output:   - retval  :     return value of the given variable vector

function [retval] = lin_ausgleich(A,b)
  %Declare and Initialise the return value
  retval = 0;
  
  %Solving the normal equation with the Cholesky decompositioned Matrix A
  %and A'*b' Vector per Definition 
  c = trisolve(1,chol_decomp(transpose(A)*A), transpose(A)*transpose(b));
  
  retval = trisolve(0,transpose(chol_decomp(transpose(A)*A)),c)';
end