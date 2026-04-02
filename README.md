<img width="729" height="380" alt="image" src="https://github.com/user-attachments/assets/d0959e7c-1c56-4b6d-b66d-07e14d0e5570" />
<img width="651" height="341" alt="image" src="https://github.com/user-attachments/assets/0989daff-85f1-41af-9ded-94ff17a483e1" />

# Optimization Algorithms Visualization & Analysis

Bu proje, matematiksel optimizasyon problemlerini ve modern gradyan tabanlı algoritmaların (ADAM, SGD vb.) performansını incelemek amacıyla geliştirilmiş interaktif bir masaüstü uygulamasıdır. Kullanıcılar, farklı hiperparametreler set ederek algoritmaların optimum noktaya ulaşma süreçlerini hem tablo hem de 3D grafik üzerinden takip edebilirler.

## 🚀 Özellikler

* **Çoklu Algoritma Desteği:** ADAM ve diğer yaygın optimizasyon yöntemlerinin (SGD, RMSProp vb.) simülasyonu.
* **Dinamik Parametre Kontrolü:** Öğrenme oranı ($\alpha$), Momentum ($\beta_1$, $\beta_2$) ve Epsilon gibi kritik parametrelerin arayüz üzerinden ayarlanabilmesi.
* **3D Görselleştirme:** Fonksiyon yüzeyi üzerinde algoritmanın izlediği yolun (trajectory) gerçek zamanlı ve etkileşimli çizimi.
* **İterasyon Takibi:** Her adımda koordinatların ($x_1$, $x_2$) ve maliyet (cost) değerinin anlık olarak tabloda listelenmesi.
* **Benchmark Fonksiyonları:** Özellikle **Perm Function** ($d=2, \beta=10$) gibi optimize edilmesi zor fonksiyonlar üzerinde test imkanı.

## 🛠 Teknik Detaylar

Uygulama, optimizasyon sürecini şu parametrelerle yönetir:
* **Alpha:** Öğrenme hızı (Learning Rate).
* **Beta 1 & 2:** Gradyanların birinci ve ikinci momentlerini kontrol eden katsayılar.
* **Max Iterations:** Algoritmanın sonlanacağı maksimum adım sayısı.

### Örnek Analiz Çıktısı (ADAM)
Uygulama üzerinden alınan başarılı bir test sonucu:
- **Best Value:** `0.010803`
- **Best Position:** `[0.4587, 0.9897]`
- **Status:** SUCCESS (Error < 10%)