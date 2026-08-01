function [peakValue, peakIndex] = detectPeak(signal)

    // Ignore the first 10 samples
    searchSignal = signal(11:$);

    [peakValue, localIndex] = max(searchSignal);

    peakIndex = localIndex + 10;

endfunction
