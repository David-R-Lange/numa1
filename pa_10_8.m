% Programmieraufgabe 10.8
% Liste der Gruppenmitglieder (Name, Matrikelnummer)
%   1. Finja Tadge, 10053115
%   2. Jean-Luc Brueggemann, 10048805
%   3. Rene-David Brueggemann, 10040204
%
% Programmiersprache: MATLAB
% 9.13.0.2105380 (R2022b) Update 2
%
% Liste der eingesendeten Dateien:
%   1.  pa_10_8.m
%   2.  jacobi.m
%   3.  gauss_seidel.m
%
%
%Housekeeping
clc;
clear;

%Def. der Hilbert-Matrix aus Programmieraufgabe 8.6

m = 8;
for i = 1:m
    for j = 1:m
        H(i,j) = 1/(i+j-1);
    end
end

b = H(:,3);

% Def. der genutzten Variablen laut Aufgabenblatt

k_max = 3000;
EPS = 10^(-5);
x_0 = zeros(m,1);

% Ausfuehrung der Methoden

jacobi(H, b, x_0, k_max, EPS)
%gauss_seidel(H, b, x_0, k_max, EPS)
