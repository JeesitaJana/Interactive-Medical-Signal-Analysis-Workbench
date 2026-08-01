
function filteredSignal = lowpassFilter(signal, alpha)

    //-----------------------------------
    // Signal Length
    //-----------------------------------

    N = length(signal);

    //-----------------------------------
    // Initialize Output
    //-----------------------------------

    filteredSignal = zeros(signal);

    //-----------------------------------
    // First Sample
    //-----------------------------------

    filteredSignal(1) = signal(1);

    //-----------------------------------
    // Low-pass Filtering
    //-----------------------------------

    for i = 2:N
        filteredSignal(i) = alpha * signal(i) + (1 - alpha) * filteredSignal(i-1);
    end

endfunction
