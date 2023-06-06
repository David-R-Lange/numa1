% Funktion zum iterativen Loesen eines LGS' mit dem Jacobi-Verfahren

% Input:    - A:        Matrix des LGS Ax = b
%           - b:        Loesungsvektor des LGS Ax = b
%           - x:        Startvektor
%           - k_max:    maximale Iterationszahl
%           - EPS:      Abbruchkriterium, s.d. ||Ax^(k)-b||_2 < EPS erreicht werden soll
%
% Output:   x:          Loesung vom LGS Ax = b, s.d. EPS eingehalten wird
%           k:          Tatsaechliche Iterationszahl, die zum Loesen benoetigt wurde

function [x, k] = jacobi(A, b, x, k_max, EPS)

  for k = 1:k_max

    for i = 1:length(b)

      %Die Summe der Matrixelemente, welche nicht auf der Diagonalen liegen, in der i-ten Zeile multipliziert mit der k-ten Lösung von x.

      matrix_A_Komponent(i) = A(i,:) * x(:,k) - A(i,i) * x(i,k); %Nicht ganz notwendig

      %Das i-te x der k+1 Lösung.

      if A(i,i) == 0 %Wird zu haeufig ausgerechnet
          error('Error - Jacobi Verfahren nicht anwendbar!')
      end

      x(i,k+1) = 1/A(i,i) * (b(i) - matrix_A_Komponent(i));

      %Matrix A als Komponentensumme ausgerechnet und subtrahiert mit den b Vektor.

      test(i) = matrix_A_Komponent(i) - b(i); %hier fehlt etwas
    end

    %Abruchkriterium: Falls 2-er Norm des Vektors test kleiner als EPS ist.

    if norm(test, 2) < EPS
      x = x(:,k);
      break; %return
    end

  end

  % Die Ausgabe soll letzendlich nur die letzte Spalte unserer Hilfsmatrix
  % x enthalten

  x = x(:,k_max);
end
