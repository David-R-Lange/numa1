%% Funktion zum lösen eines linearen Gleichungssystems Mx = b durch vorwärts- bzw. rückwärtseinsetzen

% INPUT:   - M: quadratische nxn Matrix (entweder obere oder untere Dreiecksmatrix)
%          - b: Vektor mit n-Einträgen
%          - lower: Boolean - um zu definieren, ob es sich bei M um eine
%            obere oder untere Diagonalmatrix handelt - daraus wird
%            entschieden, ob das LGS durch vorwärts (untere) bzw.
%            rückwärts (obere) gelöst wird


% OUTPUT:  - x: Lösung des LGS Mx = b

function x = trisolve(lower, M, b)

n = length(M(1,:));

if lower == true      % Im Falle einer unteren Dreicksmatrix

   if M(1,1) == 0
       error('trisolve() not possible')
   end

   x(1) = b(1)/M(1,1);       % Der erste Eintrag muss initialisiert werden, danach können die weiteren Einträge 
                      % durch vorwärtseinsetzen iterativ gewonnen werden
   for i = 2:n   

        if M(i,i) == 0
            error('trisolve() not possible')
        end

        x(i) = (b(i)-dot(M(i,1:i-1),x(1,1:i-1)))/(M(i,i));      % Die Berechnung ist nur ein Skalarprodukt einer
                                                             % reduzierten
                                                             % Zeile der
                                                             % Matrix A mit
                                                             % dem
                                                             % reduzierten
                                                             % Vektor x
   end

elseif lower == false      % Im Fall einer oberen Dreiecksmatrix
    
    if M(n,n) == 0
       error('trisolve() not possible')
    end

    x(n) = b(n)/M(n,n);    % Hier muss der letzte Eintrag initialisiert werden

    for i = n-1:-1:1       % Alle weiteren Einträge werden durch rückwärtseinsetzen iterativ gewonnen
        
        if M(i,i) == 0
            error('trisolve() not possible')
        end
        
        x(i) = (b(i)-dot(M(i,i+1:n),x(i+1:n)))/M(i,i);
    end
end

end