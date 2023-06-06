% Programmieraufgabe 10.9 : Weihnachtsbaum
% Liste der Gruppenmitglieder (Name, Matrikelnummer)
%   1. Finja Tadge, 10053115
%   2. Jean-Luc Brueggemann, 10048805
%   3. Rene-David Brueggemann, 10040204
%
% Programmiersprache: GNU Octave
% Version: 7.2.0
%
% Liste der eingesendeten Dateien:
%   1. per_spline.m         Datei bereitgestellt von Denis Khimin
%   2. per_spline_lgs.m     Datei bereitgestellt von Denis Khimin
%   3. Weihnachtsbaum.m
%
% Skript fuer einen festlichen Weihnachtsbaum mit blinkenden
% Weihnachtskugeln

%Housekeeping
clc;
clear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DEFINITIONEN DER FIGUREN %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Def. einer Baumhaelfte
B_x = [0, 1, 1.01, 2, 2.01, 3, 3.01, 3.75, 3.76, 4.5];
B_y = [-2, -2, -10.5, -2, -8.5, -2, -6.5, -2, -4.5, 1.5];

%Interpolation des Baumes mit der Funktion per_spline
baum = per_spline(B_x, B_x, B_y)';


hold on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PLOT UND DARSTELLUNG %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

set(gcf, 'Position', [0 0 1920 1080]); %Volle einnahme eines 1920x1080 screen

%Zeichnen des Baumes
fill( B_x, baum + 0.25, 'g')
hold on;
fill( B_x, -baum - 0.25, 'g')
hold on;


%Zeichnen des Sterns
stern_plot = plot( 4.5, 0, 'pentagram y', 'MarkerSize', 100);
%Zeichnen der Kugeln
hold on;
kugel1 = plot(1,-5, '.r', 'MarkerSize', 100); %b=100 ist der Radius des Kreises

hold on;
kugel2 = plot(3.5,2.5, 'b', 'MarkerSize', 100);

hold on;
kugel3 = plot(2.5,3, 'c', 'MarkerSize', 100);

hold on;
kugel4 = plot(2,6.5, 'y', 'MarkerSize', 100);

hold on;
kugel5 = plot(3,-4, 'r', 'MarkerSize', 100);

hold on;
kugel6 = plot(2,-5, 'b', 'MarkerSize', 100);

hold on;
kugel7 = plot(3.8, -2, 'y', 'MarkerSize', 100);

hold on;
kugel8 = plot(1.5,2.5, 'm', 'markersize', 100);


%Zeichnung Rotieren und 'beautifying'
pbaspect([1.5 1 1]);
camroll(90);
set(gca, 'visible', 'off');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Animation der Kugeln und Lichter %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

seconds = 1;

set(kugel1, 'visible', 'off');
set(kugel2, 'visible', 'on');
set(kugel3, 'visible', 'off');
set(kugel4, 'visible', 'on');
set(kugel5, 'visible', 'off');
set(kugel6, 'visible', 'on');
set(kugel7, 'visible', 'off');
set(kugel8, 'visible', 'on');
pause(seconds);
set(kugel1, 'visible', 'on');
set(kugel2, 'visible', 'off');
set(kugel3, 'visible', 'on');
set(kugel4, 'visible', 'off');
set(kugel5, 'visible', 'on');
set(kugel6, 'visible', 'off');
set(kugel7, 'visible', 'on');
set(kugel8, 'visible', 'off');
pause(seconds);

set(kugel1, 'visible', 'off');
set(kugel2, 'visible', 'on');
set(kugel3, 'visible', 'off');
set(kugel4, 'visible', 'on');
set(kugel5, 'visible', 'off');
set(kugel6, 'visible', 'on');
set(kugel7, 'visible', 'off');
set(kugel8, 'visible', 'on');
pause(seconds);
set(kugel1, 'visible', 'on');
set(kugel2, 'visible', 'off');
set(kugel3, 'visible', 'on');
set(kugel4, 'visible', 'off');
set(kugel5, 'visible', 'on');
set(kugel6, 'visible', 'off');
set(kugel7, 'visible', 'on');
set(kugel8, 'visible', 'off');
pause(seconds);

set(kugel1, 'visible', 'off');
set(kugel2, 'visible', 'on');
set(kugel3, 'visible', 'off');
set(kugel4, 'visible', 'on');
set(kugel5, 'visible', 'off');
set(kugel6, 'visible', 'on');
set(kugel7, 'visible', 'off');
set(kugel8, 'visible', 'on');
pause(seconds);
set(kugel1, 'visible', 'on');
set(kugel2, 'visible', 'off');
set(kugel3, 'visible', 'on');
set(kugel4, 'visible', 'off');
set(kugel5, 'visible', 'on');
set(kugel6, 'visible', 'off');
set(kugel7, 'visible', 'on');
set(kugel8, 'visible', 'off');
pause(seconds);

set(kugel1, 'visible', 'off');
set(kugel2, 'visible', 'on');
set(kugel3, 'visible', 'off');
set(kugel4, 'visible', 'on');
set(kugel5, 'visible', 'off');
set(kugel6, 'visible', 'on');
set(kugel7, 'visible', 'off');
set(kugel8, 'visible', 'on');
pause(seconds);
set(kugel1, 'visible', 'on');
set(kugel2, 'visible', 'off');
set(kugel3, 'visible', 'on');
set(kugel4, 'visible', 'off');
set(kugel5, 'visible', 'on');
set(kugel6, 'visible', 'off');
set(kugel7, 'visible', 'on');
set(kugel8, 'visible', 'off');
pause(seconds);

set(kugel1, 'visible', 'off');
set(kugel2, 'visible', 'on');
set(kugel3, 'visible', 'off');
set(kugel4, 'visible', 'on');
set(kugel5, 'visible', 'off');
set(kugel6, 'visible', 'on');
set(kugel7, 'visible', 'off');
set(kugel8, 'visible', 'on');
pause(seconds);
set(kugel1, 'visible', 'on');
set(kugel2, 'visible', 'off');
set(kugel3, 'visible', 'on');
set(kugel4, 'visible', 'off');
set(kugel5, 'visible', 'on');
set(kugel6, 'visible', 'off');
set(kugel7, 'visible', 'on');
set(kugel8, 'visible', 'off');
pause(seconds);

set(kugel1, 'visible', 'off');
set(kugel2, 'visible', 'on');
set(kugel3, 'visible', 'off');
set(kugel4, 'visible', 'on');
set(kugel5, 'visible', 'off');
set(kugel6, 'visible', 'on');
set(kugel7, 'visible', 'off');
set(kugel8, 'visible', 'on');
pause(seconds);
set(kugel1, 'visible', 'on');
set(kugel2, 'visible', 'off');
set(kugel3, 'visible', 'on');
set(kugel4, 'visible', 'off');
set(kugel5, 'visible', 'on');
set(kugel6, 'visible', 'off');
set(kugel7, 'visible', 'on');
set(kugel8, 'visible', 'off');
pause(seconds);

set(kugel1, 'visible', 'off');
set(kugel2, 'visible', 'on');
set(kugel3, 'visible', 'off');
set(kugel4, 'visible', 'on');
set(kugel5, 'visible', 'off');
set(kugel6, 'visible', 'on');
set(kugel7, 'visible', 'off');
set(kugel8, 'visible', 'on');
pause(seconds);
set(kugel1, 'visible', 'on');
set(kugel2, 'visible', 'off');
set(kugel3, 'visible', 'on');
set(kugel4, 'visible', 'off');
set(kugel5, 'visible', 'on');
set(kugel6, 'visible', 'off');
set(kugel7, 'visible', 'on');
set(kugel8, 'visible', 'off');
pause(seconds);

set(kugel1, 'visible', 'off');
set(kugel2, 'visible', 'on');
set(kugel3, 'visible', 'off');
set(kugel4, 'visible', 'on');
set(kugel5, 'visible', 'off');
set(kugel6, 'visible', 'on');
set(kugel7, 'visible', 'off');
set(kugel8, 'visible', 'on');
pause(seconds);
set(kugel1, 'visible', 'on');
set(kugel2, 'visible', 'off');
set(kugel3, 'visible', 'on');
set(kugel4, 'visible', 'off');
set(kugel5, 'visible', 'on');
set(kugel6, 'visible', 'off');
set(kugel7, 'visible', 'on');
set(kugel8, 'visible', 'off');
pause(seconds);

set(kugel1, 'visible', 'off');
set(kugel2, 'visible', 'on');
set(kugel3, 'visible', 'off');
set(kugel4, 'visible', 'on');
set(kugel5, 'visible', 'off');
set(kugel6, 'visible', 'on');
set(kugel7, 'visible', 'off');
set(kugel8, 'visible', 'on');
pause(seconds);
set(kugel1, 'visible', 'on');
set(kugel2, 'visible', 'off');
set(kugel3, 'visible', 'on');
set(kugel4, 'visible', 'off');
set(kugel5, 'visible', 'on');
set(kugel6, 'visible', 'off');
set(kugel7, 'visible', 'on');
set(kugel8, 'visible', 'off');
pause(seconds);
