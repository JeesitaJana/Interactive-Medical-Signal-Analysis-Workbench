function openCsvCallback()

    global ECG_DATA;
    global CURRENT_BEAT;
    global VIEW_START;
    global VIEW_END;
    global ORIGINAL_SIGNAL;
    global CURRENT_SIGNAL;


    // Select CSV File


    [filename, pathname] = uigetfile(["*.csv"], "Select a CSV File");

    if filename == "" then
        return;
    end


    // Load CSV


    fullpath = fullfile(pathname, filename);

    ECG_DATA = csvRead(fullpath);

    //-----------------------------------
    // Initialize
    //-----------------------------------

    CURRENT_BEAT = 1;
    VIEW_START = 1;
    VIEW_END = 187;


    // Store Original and Current Signal


    ORIGINAL_SIGNAL = ECG_DATA(CURRENT_BEAT, 1:187);
    CURRENT_SIGNAL  = ORIGINAL_SIGNAL;


    // Get Beat Class


    classID = ECG_DATA(CURRENT_BEAT, 188);

    label = getClassLabel(classID);


    // Update Statistics


    updateStatisticsPanel( ...
        CURRENT_SIGNAL, ...
        CURRENT_BEAT, ...
        label ...
    );


    // Calculate Statistics


    stats = calculateStatistics(CURRENT_SIGNAL);


    // Peak Detection


    [peakValue, peakIndex] = detectPeak(CURRENT_SIGNAL);

    disp("====================");
    disp("Peak Detection");
    disp("====================");
    disp("Peak Position");
    disp(peakIndex);

    disp("Peak Amplitude");
    disp(peakValue);


    // Plot ECG


    classID = ECG_DATA(CURRENT_BEAT,188);
    label = getClassLabel(classID);

    plotSignal(CURRENT_SIGNAL, ...
               "ECG Signal", ...
               CURRENT_BEAT, ...
               label);

endfunction
