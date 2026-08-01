function plotFFT(frequency,...
                 magnitude,...
                 dominantFrequency,...
                 maxMagnitude,...
                 beatNumber)

    //-----------------------------------
    // Create a new figure
    //-----------------------------------

    scf();

    //-----------------------------------
    // Plot FFT
    //-----------------------------------

    plot(frequency, magnitude);
    
    //-----------------------------------
// Display ECG Frequency Range
//-----------------------------------

    a = gca();
    a.data_bounds = [0, 0; 50, max(magnitude)];
    //-----------------------------------
// Mark Dominant Frequency
//-----------------------------------

    plot(dominantFrequency, maxMagnitude, "ro");

    //-----------------------------------
    // Labels
    //-----------------------------------

    xlabel("Frequency (Hz)");
    ylabel("Magnitude");

    title(msprintf( ...
    "FFT Spectrum - Beat %d\nDominant Frequency = %.2f Hz",...
    beatNumber,...
    dominantFrequency));

    xgrid();
    legend("FFT Magnitude");

    //-----------------------------------
    // Make line thicker
    //-----------------------------------

    e = gce();
    e.children.thickness = 2;
    
    //-----------------------------------
// Label Dominant Frequency
//-----------------------------------

    xstring( ...
        dominantFrequency + 1, ...
        maxMagnitude, ...
        msprintf("%.2f Hz", dominantFrequency) ...
    );


    e = gce();
    e.children.mark_size = 8;
    e.children.thickness = 3;

endfunction
