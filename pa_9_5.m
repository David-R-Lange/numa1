% Programmieraufgabe 9.5
% Liste der Gruppenmitglieder (Name, Matrikelnummer)
%   1. Finja Tadge, 10053115
%   2. Jean-Luc Brueggemann, 10048805
%   3. Rene-David Brueggemann, 10040204
%
% Programmiersprache: MATLAB
% Version: 9.13.0.2105380 (R2022b) Update 2
%
% Liste der eingesendeten Dateien:
%   1. chol_decomp.m
%   2. lin_ausgleich.m
%   3. trisolve.m
%   4. pa_9_5.m 
%
% Script starts here

%Define A and b per Defintion of 'Uebungsaufgabe 9.2'
A = [0,1,0;0,1,1;1,1,0;1,0,1;1,0,0];
b = [122,395,265,435,150];

x1 = lin_ausgleich(A,b)

%Define B and c per Definition of 'Hausaufgabe 9.4 i'
B = [0,1 ; 1,1 ; 2,1 ; 3,1 ; 4,1 ; 5,1 ; 6,1];
c = [0,1,2,2,4,5,6];

x2 = lin_ausgleich(B,c)

%Define C per Definition of 'Hausaufgabe 9.4 ii'
C = [0,0,1 ; 1,1,1 ; 4,2,1 ; 9,3,1 ; 16,4,1 ; 25,5,1 ; 36,6,1 ];

x3 = lin_ausgleich(C,c)