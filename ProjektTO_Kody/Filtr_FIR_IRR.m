
fs = 1000; 
t = 0:1/fs:1;  
f = 50; 
x = sin(2*pi*f*t);


% IIR

fc = 200;  % częstotliwość graniczna
[b, a] = butter(3, fc/(fs/2), 'low');  % tworzenie filtru rzędu 3
y_iir = filter(b, a, x);  % filtrowanie sygnału

% FIR

n = 100;  % długość filtru
h = fir1(n, fc/(fs/2), 'low');  % tworzenie filtru fir1
y_fir = filter(h, 1, x);  % filtrowanie sygnału


figure;

subplot(2,1,1);

freqz(b, a);
title('Charakterystyka częstotliwościowa filtru IIR');

subplot(2,1,2);

title('Charakterystyka częstotliwościowa filtru FIR');
freqz(h, 1);


