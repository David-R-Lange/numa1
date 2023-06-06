%% Programmieraufgabe 2.5

% Liste der Gruppenmitglieder:
%   1.  Rene-David Brüggemann, 10048805
%   2.  Jean-Luc Brüggemann, 10040204
%   3.  Finja Tadge, 10053115

% Programmiersprache: MATLAB
% Version: 9.9.0.1538559 (R2020b) Update 3

% Liste der eingesendete Dateien:

%   1.  monom_koeff.m
%   2.  monom_eval.m     (aus dem vorherigen Übungsblatt, wird aber in
%                         diesem Skript benötigt)
%   3.  pa_2_5.m

% ------------------------------------------------------------- %

%Ziel dieses Skriptes ist die Interpolation des arctan unter Verwendung von fünf Stützstellen

% Zu Beginn werden die verwendeten Variablen definiert

stx = [-2,-1,0,1,2];   % enthält die Stützstellen, welche für die Interpolation genutzt werden

stf = atan(stx);      % enthält die zu den Stützstellen gehörenden Werte des arctan

% zunächst wird der Koeffizientenvektor für das Interpolationspolynom in
% Monomdarstellung mithilfe der Funktion monom_koeff berechnet 

a = monom_koeff(stx, stf);

% Außerdem sollen sowohl das Interpolationspolynom, als auch die
% ursprüngliche Funktion geplottet werden. Dafür wird ein x-Vektor mit
% genügend kleiner Zerlegung in dem Interval [-2,2] definiert 

x = -2:0.01:2;

% Um das Interpolationspolynom zu plotten, muss dieses an jeder Stelle x_i
% ausgewertet werden Dafür wird die zuvor definierte Funktion monom_eval
% verwendet.

n = length(x);
y = zeros(n,1);

for i = 1:n
    y(i) = monom_eval(x(i), a);
end

% Jetzt kann geplottet werden, dabei wird die ursprüngliche Funktion in rot
% und das Interpolationspolynom in blau dargestellt

plot(x, atan(x), 'r',x, y, 'b')

% Geschmackssache:

grid on 
legend('arctan', 'Interpolationspolynom')
xlabel('x')
ylabel('y')
