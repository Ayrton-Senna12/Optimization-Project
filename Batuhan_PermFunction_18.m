function [cost, grad] = Batuhan_PermFunction_18(x)
    % Problem: Perm Function 0, d, beta
    % Sahibi: Batuhan (18)
    % Parametreler: d=2, Beta=10
    
    x1 = x(1); 
    x2 = x(2);
    
    % Terimler
    term1 = 11*x1 + 12*x2 - 17;
    term2 = 11*x1^2 + 12*x2^2 - 14;
    
    % 1. Maliyet (Cost)
    cost = term1^2 + term2^2;
    
    % 2. Gradient (Türev)
    if nargout > 1
        grad = zeros(size(x));
        % Zincir kuralı türevleri
        grad(1) = 22*term1 + 44*x1*term2;
        grad(2) = 24*term1 + 48*x2*term2;
    end
end