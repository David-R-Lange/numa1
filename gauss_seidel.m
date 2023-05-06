% Funktion zum iterativen loesen eines LGS' mit dem Gauss-Seidel-Verfahren

% Input:    - A:        Matrix des LGS Ax = b
%           - b:        Loesungsvektor des LGS Ax = b
%           - x:        Startvektor
%           - k_max:    maximale Iterationszahl
%           - EPS:      Abbruchkriterium, s.d. ||Ax^(k)-b||_2 < EPS erreicht werden soll
%
% Output:   x:          Loesung vom LGS Ax = b, s.d. EPS eingehalten wird
%           k:          Tatsaechliche Iterationszahl, die zum Loesen benoetigt wurde

function [x, k] = gauss_seidel(A, b, x, k_max, EPS)

  for k = 1:k_max

    for i = 1:length(b)
    l = 0;

      if(i-1 ~= 0)
       
          % Falls i-1 ~= 0, existieren auch Eintrage vor der Diagonalen, in der i-ten Zeile.
        
          l = A(i,1:i-1) * x(1:i-1,k+1);
      end
      
      % Das i-te x der k+1 Lösung.
      
      x(i,k+1) = ((1/A(i,i)) * (b(i) - l - (A(i,i+1:length(b)) * x(i+1:length(b),k))));
    end

    % Abruchkriterium: Falls 2-er Norm des Vektors test kleiner als EPS ist.
    
    if norm((A * x(:,k) - b(i)), 2) < EPS
      x = x(:,k)
      break;
    end

  end

  % Die Ausgabe soll letzendlich nur die letzte Spalte unserer Hilfsmatrix
  % x enthalten

  x = x(:,k_max);
end
