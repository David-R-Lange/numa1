B_x = [0 1 1.01 2 2.01 3 3.01 3.75 3.76 4.5]
B_y = [-2 -2 -10.5 -2 -8.5 -2 -6.5 -2 -4.5 1.5]

X = linspace(0,4.5);
Y = per_spline( X, B_x, B_y);


f = figure('color', [0.2,0.2,0.2]);
ax = axes();
hold on;
set(ax, 'color', 'k', 'ycolor', 'c', 'xcolor', 'g');
plot(Y - 1.5, X,'-g', -1*Y + 1.5, X, '-g', [0], [4.6], 'py','MarkerSize', 65)(3);

X_1 = linspace(1,1.9,15);
per_spline( X_1, B_x, B_y);
Y_1 =  cos( (X_1 - 1) * pi) .* ( per_spline( X_1, B_x, B_y)' - 1.5);
Y_2 =  cos( (X_1 - 0.8)  * pi) .* ( per_spline( X_1, B_x, B_y)' - 1.5);

X_3 = linspace(2.0,2.9,15);
per_spline( X_3, B_x, B_y);
Y_3 =  cos( (X_3 - 1) * pi) .* ( per_spline( X_3, B_x, B_y)' - 1.5);
Y_4 =  cos( (X_3 - 0.8)  * pi) .* ( per_spline( X_3, B_x, B_y)' - 1.5);

X_5 = linspace(3.05,4.3,25);
per_spline( X_5, B_x, B_y);
Y_5 =  cos( (X_5 - 1) * pi) .* ( per_spline( X_5, B_x, B_y)' - 1.5);
Y_6 =  cos( (X_5 - 0.8)  * pi) .* ( per_spline( X_5, B_x, B_y)' - 1.5);

Y = [X_1 X_1 X_3 X_3 X_5 X_5];
X = [Y_1 (-1 * Y_2) Y_3 (-1 * Y_4) Y_5 (-1 * Y_6)];


plot([-2,1.9,9.88], [3.7,2.04,1.14], '.r', 'MarkerSize', 30)
plot([4,5.12], [3.4,1.48], '.b', 'MarkerSize', 30)
plot([-4,0.12,-4.24], [2.3,2.9,1.05], '.m', 'MarkerSize', 30)

l_1 = plot(X([1:5:length(X)]), Y([1:5:length(X)]), '.y')
l_2 = plot(X([2:5:length(X)]), Y([2:5:length(X)]), '.y')
l_3 = plot(X([3:5:length(X)]), Y([3:5:length(X)]), '.y')
l_4 = plot(X([4:5:length(X)]), Y([4:5:length(X)]), '.y')
l_5 = plot(X([5:5:length(X)]), Y([5:5:length(X)]), '.y')


n = 1;
while true
    if n == 1
        set(l_1, 'Visible', 'off');
        set(l_4, 'Visible', 'on');
        n = 2;
    elseif n == 2
        set(l_2, 'Visible', 'off');
        set(l_5, 'Visible', 'on');
        n = 3;
    elseif n == 3
        set(l_3, 'Visible', 'off');
        set(l_1, 'Visible', 'on');
        n = 4;
    elseif n == 4
        set(l_4, 'Visible', 'off');
        set(l_2, 'Visible', 'on');
        n = 5;
    elseif n == 5
        set(l_5, 'Visible', 'off');
        set(l_3, 'Visible', 'on');
        n = 1;
    endif
    pause(0.7);
endwhile




hold off;
