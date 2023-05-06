%% Programmieraufgabe 5.6

% Liste der Gruppenmitglieder (Name, Matrikelnummer)

%   1.Finja Tadge, 10053115
%   2.Jean-Luc Brueggemann, 10048805
%   3.Rene-David Brueggemann, 10040204
%
% Programmiersprache: MATLAB
% 9.9.0.1538559 (R2020b) Update 3

% Liste der eingesendeten Dateien

%   1. my_int.m
%   2. dot_product.m
%   3. pa_5_6.m


% Ziel des Skriptes ist die Berechnung des absoluten Fehlers für die
% numerische Integration der Funktion f(y) = 1/(1+y^2) auf dem Intervall
% [-pi,pi]

% Für die numerische Integration sollen alle drei Methoden (Mittelpunktregel, Trapez-Regel, Simpson-Regel) verwendet
% werden.
% Die numerische Integration wird jeweils für n = 2^(j+1) Teilintervalle
% mit ( j = 1,...,11 ) durchgeführt, und der Fehler für alle n berechnet

% Berechnung des exaten Integrals:

I_exakt = 2*atan(pi);

% Die berechneten absoluten Fehler sollen in einer Matrix e (11x3) gespeichert
% werden

m = ['midpoint', 'trapezoid', 'simpson'];
e = zeros(11,3);

f = @(y) 1./(1+y.^2);

% Berechnung des absoluten Fehlers für alle n und alle Methoden

for i = 1:3
    
    for j = 1:11
        
        e(j,i) = abs(I_exakt - my_int(f, -pi, pi, 2.^(j + 1), m(i)));
    
    end
end

% Außerdem soll die Konvergenzgeschwindigkeit, definiert durch (auf dem Blatt steht e_i /
% e_(i+1), habe aber sonst für die Konvergengeschwindigkeit immer e_(i+1)/e_i gefunden) für alle Fälle bestimmt werden.

% Die Ergbenisse werden wieder in einer Matrix k (10x3) gespeichert

k = zeros(10,3);

for i = 1:3
    
    k(1:10,i) = e(2:11,i)./e(1:10,i);

end

% Kann mithilfe der Konvergenzgeschwindigkeit das theoretische Ergebnis
% numerisch verifiziert werden?

% für anwachsende n konvergiert das numerische Integral genau dann, gegen
% den exakten Wert, wenn die Konvergenzgeschwindigkeit (siehe oben) gegen
% ein c mit 0 <= c <= 1 konvergiert.
 
% Auch diese Auswertung kann automatiesiert werden.

for i = 1:3
    if k(10,i) <= 1
        disp(['für Methode ', m(i), ' kann das theoretische Ergebnis numerisch verifiziert werden.'])
    else
        disp(['für Methode ', m(i), ' kann das theoretische Ergebnis numerisch NICHT verifiziert werden.'])
    end
end






