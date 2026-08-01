function panRightCallback()

    global VIEW_START;
    global VIEW_END;
    global CURRENT_SIGNAL;

    //-----------------------------------
    // Don't pan if full signal is visible
    //-----------------------------------

    if VIEW_START == 1 & VIEW_END == 187 then
        return;
    end

    //-----------------------------------
    // Pan Right
    //-----------------------------------

    panStep = 10;

    VIEW_END   = min(187, VIEW_END + panStep);
    VIEW_START = min(VIEW_END - 29, VIEW_START + panStep);

    //-----------------------------------
    // Update Plot
    //-----------------------------------

    classID = ECG_DATA(CURRENT_BEAT,188);
    label = getClassLabel(classID);

    plotSignal(CURRENT_SIGNAL, ...
               "ECG Signal", ...
               CURRENT_BEAT, ...
               label);

endfunction
