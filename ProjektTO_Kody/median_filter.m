function filtered_signal = median_filter(signal, window_size)

% pobranie długości sygnału
signal_length = length(signal);

% tworzenie pustego sygnału wyjściowego
filtered_signal = zeros(1, signal_length);

% pętla iterująca po sygnale wykonująca algorytm
for i = 1:(signal_length - window_size + 1)
    % pobranie okna
    window = signal(i:i+window_size-1);
    
    % sortowanie elementów okna
    sorted_window = sort(window);
    
    % liczenie mediany okna
    if mod(window_size, 2) == 0
        % mediana dla okna o parzystej liczbie próbek
        median = (sorted_window(window_size/2) + sorted_window((window_size/2)+1)) / 2;
    else
        % mediana dla okna o nieparzystej liczbie próbek
        median = sorted_window((window_size+1)/2);
    end
    
    % przypisanie mediany do sygnału wyjściowego filtru
    filtered_signal(1, i) = median;
end
end

% END
