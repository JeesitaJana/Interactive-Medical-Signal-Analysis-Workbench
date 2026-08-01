function fftCallback()

    global ECG_DATA;
    global CURRENT_BEAT;
    global TXT_DOM_FREQ;

    //-----------------------------------
    // Check whether ECG data is loaded
    //-----------------------------------

    if size(ECG_DATA, "*") == 0 then
        messagebox("Please load a CSV file first.", "No Data Loaded", "error");
        return;
    end

    //-----------------------------------
    // Get current heartbeat
    //-----------------------------------


    
    //-----------------------------------
    // Compute FFT
    //-----------------------------------

    [frequency,magnitude,dominantFrequency,maxMagnitude] = fftAnalysis(CURRENT_SIGNAL);
    
    //-----------------------------------
// Update Statistics Panel
//-----------------------------------


    TXT_DOM_FREQ.string = msprintf("%.2f Hz", dominantFrequency);
    //-----------------------------------
    // Display FFT
    //-----------------------------------

    plotFFT(frequency,...
            magnitude,...
            dominantFrequency,...
            maxMagnitude,...
            CURRENT_BEAT);  

endfunction
