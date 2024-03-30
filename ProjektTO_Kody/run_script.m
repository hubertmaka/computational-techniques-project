clc; clear all; close all;
% generowanie sygnału sinusoidalnego
fs = 1000; % częstotliwość próbkowania (Hz)
f = 3; % czestotliwość sygnału (Hz)
t = 0:1/fs:1; % czas (s)
window_size = 150; % rozmiar okna
signal = sin(2*pi*f*t); % sygnał sinusoidalny

% szum Gauss'owski
mean = 0; % średnia zaszumienia
std = 0.1; % odchylenie standardowe szumu
noise = mean + std * randn(size(signal)); % generacja szumu
noisy_signal1 = signal + noise; % złożenie zaszumionego sygnału1

% szum impulsowy
p = 0.1; % prawdopodobieństwo szumu
noise = (rand(size(signal)) < p); % generacja szumu
noisy_signal2 = signal + noise; % złożenie zaszumionego sygnału2

% testowanie powyższych zaszumionych sygnałów na poszczególnych filtrach
% test filtru medianowego na sygnale z szumem Gauss'owskim
y1 = median_filter(noisy_signal1, window_size);
% test filtru medianowego na sygnale z szumem impulsowym
y2 = median_filter(noisy_signal2', window_size);
% test filtru ruchoma średnia na sygnale z szumem Gauss'owskim
y3 = moving_average_filter(noisy_signal1, window_size);
% test filtru ruchoma średnia na sygnale z szumem impulsowym
y4 = moving_average_filter(noisy_signal2, window_size);


% prezentacja filtru medianowego użytego na sygnale z szumem Gauss'owskim
figure(1);
subplot(1,2,1);
plot(t, y1, "b-", "LineWidth", 1.5);
hold on;
plot(t, noisy_signal1, "r-");
title("Prezentacja filtru medianowego na przykładowym sygnale (szum Gauss'owski)");
xlabel("t");
ylabel("A");
legend("sygnał wyjściowy", "sygnał wejściowy");

% prezentacja filtru ruchoma średnia użytego na sygnale z szumem Gauss'owskim
subplot(1,2,2);
plot(t, y3, "b-", "LineWidth", 1.5);
hold on;
plot(t, noisy_signal1, "r-");
title("Prezentacja filtru ruchoma średnia na przykładowym sygnale (szum Gauss'owski)");
xlabel("t");
ylabel("A");
legend("sygnał wyjściowy", "sygnał wejściowy");

% prezentacja filtru medianowego użytego na sygnale z szumem impulsowym
figure(2);
subplot(1,2,1);
plot(t, y2, "b-", "LineWidth", 1.5);
hold on;
plot(t, noisy_signal2, "r");
title("Prezentacja filtru medianowego na przykładowym sygnale (szum impulsowy)");
xlabel("t");
ylabel("A");
legend("sygnał wyjściowy", "sygnał wejściowy");

% prezentacja filtru ruchoma średnia użytego na sygnale z szumem impulsowym
subplot(1,2,2);
plot(t, y4, "b-","LineWidth",1.5);
hold on;
plot(t, noisy_signal2, "r-");
title("Prezentacja filtru sruchoma średnia na przykładowym sygnale (szum impulsowy)");
legend("sygnał wyjściowy", "sygnał wejściowy");
xlabel("t");
ylabel("A");
grid on;

% END

