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
% ВАШ КОД ДОЛЖЕН НАХОДИТЬСЯ ЗДЕСЬ
% max(gx)
% min(gy)
% max(gy)
% min(gy)

% figure;
% m = mesh (gy);
% m.FaceLighting = 'phong';
% axis equal;

a = 1;
gx(start_coords)
route = zeros(max_its, 2);
route(1,:) = start_coords;
n = 1;
x1 = 
y1 = 
while n < (max_its - 1)
%     tmp_x = route(n,1) -  
%     dist = abs(route() - route()) + abs(route() - route());
    if dist < 2
        break;
    end
    n = n + 1;
end
route(n,:) = end_coords;
% *******************************************************************

end
