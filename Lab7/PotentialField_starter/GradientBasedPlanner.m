function route = GradientBasedPlanner (f, start_coords, end_coords, max_its)
% требуется найти путь на плоскости на основании градиента функции f 
% входные данные:
%     start_coords и end_coords -- координаты начальной и конечной точек
%     max_its -- максимальное число возможных итераций 
% выходные данные:
%     route -- массив из 2 столбцов и n строк
%     каждая строка соответствует координатам x, y робота (по мере прохождения пути)

[gx, gy] = gradient (-f);

% *******************************************************************
% ВАШ КОД ДОЛЖЕН НАХОД�?ТЬСЯ ЗДЕСЬ
route = start_coords;
n = 1;
tmp = start_coords;
distance = [];
% gx(tmp(2),tmp(1))
while n < (max_its - 1)
    grad = [gx(round(tmp(2)),round(tmp(1))) gy(round(tmp(2)),round(tmp(1)))];
    last = tmp;
    tmp = tmp + 0.5*grad/norm(grad);   
    dist = sqrt((end_coords(1) - tmp(1))^2 + (end_coords(2) - tmp(2))^2);
    if dist < 2
        break;
    end
    tmp_dist = sqrt((last(1) - tmp(1))^2 + (last(2) - tmp(2))^2);
%     if (tmp_dist > 1.0)
%         distance = [distance; n tmp_dist];
%     end
    n = n + 1;
    route = [route; tmp];
end
% *******************************************************************

end
