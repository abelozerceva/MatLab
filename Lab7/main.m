tr1 = [[2 4];[5 8];[7 6]];
tr2 = [[7 4];[8 1];[12 6]]; % tr2 = [[7 4];[8 9];[12 6]];
tr3 = [[2 3];[4 7];[6 4]];
tr4 = [[3 3];[6 6];[9 2]];
tr5 = [[9 1];[9 6];[13 4]];
tr6 = [[3 4];[4 6];[5 4]];

result = check_triangle(tr1, tr2)
result = check_triangle(tr1, tr3)
result = check_triangle(tr4, tr3)
result = check_triangle(tr4, tr5)
result = check_triangle(tr6, tr3)