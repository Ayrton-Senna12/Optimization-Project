function [cost, grad] = Eren_PowerSum_27(x)
    % Problem: Power Sum (4 Boyutlu - SFU Versiyonu)
    % Parametreler: d=4, b=[8, 18, 44, 114]
    
    % Gelen x vektörü 4 elemanlıdır: [x1, x2, x3, x4]
    
    % Hedef b vektörü (4 denklem için 4 hedef)
    b = [8, 18, 44, 114];
    
    % --- 1. Maliyet (Cost) Hesabı ---
    outer_sum = 0;
    grad = zeros(size(x)); % Gradyan, x ile aynı boyutta (1x4) olur
    
    % Denklem 4 parçalı olduğu için döngü kuruyoruz (k=1'den 4'e kadar)
    for k = 1:4
        % İçerdeki Toplam: Tüm x'lerin k. kuvvetlerini topla
        % Bu komut x içindeki 4 sayının da kuvvetini alır
        inner_sum = sum(x .^ k);
        
        % Farkı bul (Toplam - Hedef)
        diff = inner_sum - b(k);
        
        % Maliyete ekle (Farkın karesi)
        outer_sum = outer_sum + diff^2;
        
        % --- 2. Gradient (Türev) Hesabı ---
        if nargout > 1
            % Zincir kuralı türevi: 2 * (Fark) * k * x^(k-1)
            % Bu işlem vektörel yapılır, yani x1, x2, x3, x4 aynı anda hesaplanır
            grad = grad + 2 * diff * k * (x .^ (k-1));
        end
    end
    
    cost = outer_sum;
end