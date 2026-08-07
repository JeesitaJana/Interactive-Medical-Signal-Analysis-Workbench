function [frequency, magnitude, dominantFrequency, maxMagnitude] = fftAnalysis(signal)


    // Number of samples


    N = length(signal);


    // Sampling Frequency


    Fs = 360;


    // Compute FFT


    Y = fft(signal);


   // Magnitude Spectrum


    magnitude = abs(Y) / N;

    //-----------------------------------
    // Keep only positive frequencies
    //-----------------------------------

    magnitude = magnitude(1:floor(N/2));


    // Frequency Axis


    frequency = (0:floor(N/2)-1) * Fs / N;
    

// Ignore DC Component


    searchMagnitude = magnitude(2:$);
    searchFrequency = frequency(2:$);


   // Dominant Frequency


    [maxMagnitude, index] = max(searchMagnitude);

    dominantFrequency = searchFrequency(index);

endfunction
