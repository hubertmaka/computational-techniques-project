function filtered_signal = moving_average_filter(signal, window_size)

% pobranie długości sygnału
signal_length = length(signal);

% tworzenie pustego wektora sygnału
filtered_signal = zeros(1, signal_length);

% pętla iterująca po sygnale wykonująca algorytm
for i = 1:(signal_length - window_size + 1)
    % pobieranie okna 
    window = signal(i:i+window_size-1);
    
    % obliczanie średniej dla okna
    filtered_signal(i) = sum(window) / window_size;
end
end

% END