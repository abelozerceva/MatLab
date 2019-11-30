function result = check_triangle(tr1, tr2)
    if ((tr1(1,1) == tr1(2,1)) && (tr1(1,1) == tr1(3,1))) || ((tr1(1,2) == tr1(2,2)) && (tr1(1,2) == tr1(3,2)))
        result = 'First not triangle';
        return
    end
    if ((tr2(1,1) == tr2(2,1)) && (tr2(1,1) == tr2(3,1))) || ((tr2(1,2) == tr2(2,2)) && (tr2(1,2) == tr2(3,2)))
        result = 'Second not triangle';
        return
    end
    tmp = zeros(6,4);
    tmp(1,:) = check_one_edge(tr1(1,:),tr1(2,:),tr1(3,:),tr2);
    tmp(2,:) = check_one_edge(tr1(2,:),tr1(3,:),tr1(1,:),tr2);
    tmp(3,:) = check_one_edge(tr1(1,:),tr1(3,:),tr1(2,:),tr2);
    tmp(4,:) = check_one_edge(tr2(1,:),tr2(2,:),tr2(3,:),tr1);
    tmp(5,:) = check_one_edge(tr2(2,:),tr2(3,:),tr2(1,:),tr1);
    tmp(6,:) = check_one_edge(tr2(1,:),tr2(3,:),tr2(2,:),tr1);
    for i = 1:size(tmp(:,1))
        if (tmp(i,:) == [1 0 0 0])
            result = 'false';
            return 
        end
        if (tmp(i,:) == [0 1 1 1])
            result = 'false';
            return 
        end
    end
    result = 'true';
end

function result = check_one_edge(p1, p2, p3, tr)
    result = zeros(1,4);
    m = 1;
    tmp = ((p2(2)-p1(2))/(p2(1)-p1(1)))*(p3(1)-p1(1)) + p1(2) - p3(2);
    if ((p2(2)-p1(2))/(p2(1)-p1(1)))*(p3(1)-p1(1)) + p1(2) - p3(2) > 0
        result(m) = 1;
    end
    m = m + 1;
    for i = 1:size(tr(:,1))
        tmp = ((p2(2)-p1(2))/(p2(1)-p1(1)))*(tr(i,1)-p1(1)) + p1(2) - tr(i,2);
        if ((p2(2)-p1(2))/(p2(1)-p1(1)))*(tr(i,1)-p1(1)) + p1(2) - tr(i,2) >= 0
            result(m) = 1;
        end
        if (p1(1) == p2(1))
            if ((tr(i,1) == p1(1)) && (tr(i,2) <= p2(2)) && (tr(i,2) >= p1(2)))
                result(m) = 1;
            end
        end
        if (p1(2) == p2(2))
            if ((tr(i,2) == p1(2)) && (tr(i,1) <= p2(1)) && (tr(i,1) >= p1(1)))
                result(m) = 1;
            end
        end
        m = m + 1;
    end
end