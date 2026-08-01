function zoomOutCallback()

    global VIEW_START;
    global VIEW_END;
    global ECG_DATA;
    global CURRENT_BEAT;

    width = VIEW_END - VIEW_START + 1;

    //-----------------------------------
    // Double the visible width
    //-----------------------------------

    newWidth = width * 2;

    //-----------------------------------
    // Maximum width is the full signal
    //-----------------------------------

    if newWidth > 187 then
        newWidth = 187;
    end

    //-----------------------------------
    // Keep zoom centred
    //-----------------------------------

    centre = floor((VIEW_START + VIEW_END) / 2);

    VIEW_START = max(1, centre - floor(newWidth / 2));
    VIEW_END   = min(187, VIEW_START + newWidth - 1);

    //-----------------------------------
    // Ensure the left boundary stays valid
    //-----------------------------------

    if VIEW_END == 187 then
        VIEW_START = max(1, VIEW_END - newWidth + 1);
    end

    CURRENT_SIGNAL;

    classID = ECG_DATA(CURRENT_BEAT,188);
    label = getClassLabel(classID);

    plotSignal(CURRENT_SIGNAL, ...
               "ECG Signal", ...
               CURRENT_BEAT, ...
               label);

endfunction
