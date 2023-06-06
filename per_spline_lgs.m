% per_spline_lgs: Berechnet die Koeffizienten sigma_i für Spline
%                   S(x) = sum_{i=-1}^{n+1} sigma_i *B_i(x)
%
% Eingabeparameter:
%
%   zerl: Zerlegung eines Intervalls [a,b] in n Intervalle [x_i,x_i+1]
%   f: Stützwerte in den Punkten x_i
%
% Rückgabewerte:
%   sigma: Vektor mit den Koeffizienten sigma_i

function sigma = per_spline_lgs(zerl, f)

n = length(zerl);
% Matrix hat die Größe n + 2 x n + 2 und lautet wie folgt
% [***********************************]
% [1/4  1   1/4     0   ....         0]
% [0    1/4  1   1/4    0   ....     0]
% [       .   .    .                  ]
% [           .    .    .             ]
% [                .    .     .       ]
% [                     1/4    1   1/4]
% [***********************************]
B = zeros(n+2,n+2);
% Definiere drei Matrizen A = 1 auf diag
%                         U = 1/4 über diag
%                         L = 1/4 unter diag
A = eye(n+2,n+2);
U = diag(.25*ones(n+1,1),1);
L = diag(.25*ones(n+1,1),-1);
% Setze B aus A, L und U zusammen
% Laufe durch die Zeilen von B mittels B(2:n+1,:)
B(2:n+1,:) = A(2:n+1,:) + U(2:n+1,:) + L(2:n+1,:);

% Befülle nun die erste und letzte zeile für periodischen Spline 
% S'(a) = S'(b) und S''(a) = S''(b)
B(1,1) = -1;
if n==3
   B(1,3) = 2;
else
   B(1,3)=1;
   B(1,n) = 1;
end
B(1,n+2) = -1;

B(n+2,1) = 1;
B(n+2,2) = -2;
if n==3
    B(n+2,3) = 0;
else
    B(n+2,3) = 1;
    B(n+2,n) = -1;
end
B(n+2,n+1) = +2;
B(n+2,n+2) = -1;
% Rechte Seite
f=[0,f,0];
if (size(f,1) == 1) 
    f = f';
end
% Löse das system
sigma = B\f; 
end
