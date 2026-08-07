function resetPlotCallback()

    global ORIGINAL_SIGNAL;
    global CURRENT_SIGNAL;
    global VIEW_START;
    global VIEW_END;
    global ECG_DATA;
    global CURRENT_BEAT;


    // Restore Original Signal


    CURRENT_SIGNAL = ORIGINAL_SIGNAL;


    // Reset View


    VIEW_START = 1;
    VIEW_END = 187;


    // Plot Signal

    classID = ECG_DATA(CURRENT_BEAT,188);
    label = getClassLabel(classID);

    plotSignal(CURRENT_SIGNAL, ...
               "ECG Signal", ...
               CURRENT_BEAT, ...
               label);

endfunction
