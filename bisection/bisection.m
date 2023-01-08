function [a, b] = bisection(f, a, b, e)
    if a > b
        [b, a] = deal(a, b);    % ensure a < b
    end
    y_a = f(a);
    y_b = f(b);
    if y_a == 0
        b = a;
    end
    if y_b == 0
        a = b;
    end
    while b-a > e
        x = (a+b)/2;
        y = f(x);
        if y == 0
            a = x;
            b = x;
        elseif sign(y) == sign(y_a)
            a = x;
        else
            b = x;
        end
    end
end