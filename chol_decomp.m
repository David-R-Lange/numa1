%%Function to determine the cholesky decomposition of a given nxn matrix

% Input:    - B :     Given nxn Matrix

% Output:   - L :     Cholesky decompositioned 


function L = chol_decomp(B)
  %Try internal Matlab Cholesky decomposition to determine if B is spd
  try;
    
    %Declaration and Initialisation of n - the length and width of the nxn Matrix
    %and L - the target Matrix
    n = size(B);
    L = zeros(n);
    %Declaration and Initialisation of the nxn Matrices C and D, which store sums for the decomp
    D = zeros(n);
    C = zeros(n);
    
    for k = 1:n
      for i=1:k-1
        for j=1:i-1
          %Summation per Definition in Script, used later
          D(k,i) = D(k,i) + L(k,j)*L(i,j);
        end
        %Initialisation of the kxi Element of the L Matrix per Definition
        L(k,i) = (B(k,i) - D(k,i))/L(i,i);  
        
        %Summation of all kxi Elements of L for later
        C(k,k) = C(k,k) + power(L(k,i),2);
      end
      %Initialisation of the kxk Element of the L Matrix per Definition
      L(k, k) = sqrt(B(k, k) - C(k,k));
    end
    %Transpose L for easier use
    %L = L';
  catch ME
    disp('Matrix is not symmetric positive definite');
  end
end
