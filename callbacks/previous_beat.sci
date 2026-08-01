function previousBeatCallback()

    global ECG_DATA;
    global CURRENT_BEAT;
    global VIEW_START;
    global VIEW_END;
    global ORIGINAL_SIGNAL;
    global CURRENT_SIGNAL;

    //-----------------------------------
    // Check if ECG data is loaded
    //-----------------------------------

    if isempty(ECG_DATA) then
        messagebox("Please load a CSV file first.", "Error", "error");
        return;
    end

    //-----------------------------------
    // Go to Previous Beat
    //-----------------------------------

    if CURRENT_BEAT > 1 then
        CURRENT_BEAT = CURRENT_BEAT - 1;
    end

    //-----------------------------------
    // Reset View
    //-----------------------------------

    VIEW_START = 1;
    VIEW_END = 187;

    //-----------------------------------
    // Load Signal
    //-----------------------------------

    ORIGINAL_SIGNAL = ECG_DATA(CURRENT_BEAT, 1:187);
    CURRENT_SIGNAL  = ORIGINAL_SIGNAL;

    //-----------------------------------
    // Get Beat Class
    //-----------------------------------

    classID = ECG_DATA(CURRENT_BEAT, 188);

    label = getClassLabel(classID);

    //-----------------------------------
    // Update Statistics Panel
    //-----------------------------------

    updateStatisticsPanel( ...
        CURRENT_SIGNAL, ...
        CURRENT_BEAT, ...
        label ...
    );

    //-----------------------------------
    // Plot Signal
    //-----------------------------------

    classID = ECG_DATA(CURRENT_BEAT,188);
    label = getClassLabel(classID);

    plotSignal(CURRENT_SIGNAL, ...
               "ECG Signal", ...
               CURRENT_BEAT, ...
               label);

endfunction
