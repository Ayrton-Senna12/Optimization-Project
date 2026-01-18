function [cost, grad] = Ensar_SumSquares_22(x)
    % Problem: Sum Squares
    % Sahibi: Ensar (22)
    
    x1 = x(1); 
    x2 = x(2);
    
    % 1. Maliyet (Cost) Hesabı
    cost = 1*x1^2 + 2*x2^2;
    
    % 2. Gradient (Türev) Hesabı (Sadece istenirse hesapla)
    if nargout > 1
        grad = zeros(size(x));
        grad(1) = 2 * x1;
        grad(2) = 4 * x2;
    end
end