function filteredSignal = medianFilter(signal, windowSize)

    // Signal Length

    N = length(signal);

    // Output Signal

    filteredSignal = zeros(signal);

    // Half Window

    halfWindow = floor(windowSize / 2);

    // Median Filtering

    for i = 1:N

        startIndex = max(1, i - halfWindow);
        endIndex   = min(N, i + halfWindow);

        window = signal(startIndex:endIndex);

        filteredSignal(i) = median(window);

    end

endfunction
