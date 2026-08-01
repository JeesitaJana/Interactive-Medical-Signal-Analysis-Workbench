function filteredSignal = movingAverageFilter(signal, windowSize)

    //-----------------------------------
    // Length of signal
    //-----------------------------------

    N = length(signal);

    //-----------------------------------
    // Initialize output
    //-----------------------------------

    filteredSignal = zeros(signal);

    //-----------------------------------
    // Half window
    //-----------------------------------

    halfWindow = floor(windowSize / 2);

    //-----------------------------------
    // Apply Moving Average
    //-----------------------------------

    for i = 1:N

        startIndex = max(1, i - halfWindow);
        endIndex   = min(N, i + halfWindow);

        filteredSignal(i) = mean(signal(startIndex:endIndex));

    end

endfunction
