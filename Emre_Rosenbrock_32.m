function [cost, grad] = Emre_Rosenbrock_32(x)
    % Problem: Rosenbrock
    % Sahibi: Emre (32)
    
    x1 = x(1); 
    x2 = x(2);
    
    % 1. Maliyet (Cost)
    cost = 100*(x2 - x1^2)^2 + (x1 - 1)^2;
    
    % 2. Gradient (Türev)
    if nargout > 1
        grad = zeros(size(x));
        grad(1) = -400*x1*(x2 - x1^2) - 2*(1 - x1);
        grad(2) = 200*(x2 - x1^2);
    end
end