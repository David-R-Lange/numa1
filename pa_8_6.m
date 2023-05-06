%% Programmieraufgabe 8.6

% Liste der Gruppenmitglieder (Name, Matrikelnummer)


%   1.Jean-Luc Brueggemann, 10048805
%   2.Rene-David Brueggemann, 10040204
%   3.Finja Tadge, 10053115

% Programmiersprache: MATLAB
% 9.13.0.2105380 (R2022b) Update 2

% Liste der eingesendeten Dateien

%   1. factorize_lu.m
%   2. trisolve.m
%   3. dot_product.m
%   4. linear_map.m
%   5. pa_8_6.m

% Ziel des Skriptes ist die Lösung zweier linearer Gleichungssysteme

% Die Matrix A, sowie Vektor b sind gegeben
A = [3,17,10;2,4,-2;6,18,-12];
b = [1,2,3];

% Mithilfe des Skriptes factorize_lu wird die LU Zerlegung von A berechnet
[L,U] = factorize_lu(A);

z = trisolve(true, L, b);          % 1. lösen der 'Hilfsgleichung' Lb = z
x = trisolve(false, U, z);         % 2. lösen der Gleichug Ux = z

% Im zweiten Teil, müssen die Hilbertmatrix H, sowie der Vektor b2 zunächst aufgestellt werden,
% die Definition ist in der Aufgabe gegeben

m = 8;
for i = 1:m
    for j = 1:m
        H(i,j) = 1/(i+j-1);
    end
end

b2 = linear_map(H,ones(m,1));

% Das LGS wird wie oben in zwei Schritten gelöst

[L2, U2] = factorize_lu(H);

z2 = trisolve(true, L2, b2);
x2 = trisolve(false, U2, z2);

% Schließlich werden die Ergebnisse mit dem Backslash-Operator A\b
% verglichen:

X = A\transpose(b);
X2 = H\b2;

% Der backslash operator liefert die selben Ergebnisse, wie die LU
% Zerlegung
