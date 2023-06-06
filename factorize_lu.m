%% Funktion zur Berechnung der LU Zerlegung einer Matrix

% INPUT:   - quadratische Matrix A

% OUTPUT:  - L: untere Dreiecksmatrix
%          - U: obere Dreiecksmatrix

%               für diese Matrizen gilt: A = LU


function [L, U] = factorize_lu(A)

n = length(A(1,:));


for j = 1:n
    
    for i = j+1:n                                % Die Zerlegung der Matrix wird unter Verwendung des 
                                                 % Gauss Verfahrens
                                                 % konstruiert

        koeff = A(i,j)/A(j,j);                   % Bestimmt die Koeffizienten, mit welchen die jeweiligen Zeilen multipliziert werden
                                                 
        A(i,j:n) = A(i,j:n) - koeff*A(j,j:n);    % Die i-te Zeile wird mit dem Koeffizienten multipliziert und von  
                                                 % der j-ten Zeile
                                                 % abgezogen, um die
                                                 % Dreiecksform zu erhalten
        
        A(i,j) = koeff;                          % Um Speicerplatz zu sparen, werden die Koeffizienten (welche die untere 
                                                 % Dreiecksmatrix der LU
                                                 % Zerlegung definieren)
                                                 % hier in der Matrix A
                                                 % gespeichert.
    end 
    
end

% Aus der konstruierten Matrix A wird jeweils die obere Dreiecksmatrix U
% und die untere Dreicksmatrix L extrahiert

U = triu(A)
L = tril(A,-1) + diag(ones(n,1)) 

end