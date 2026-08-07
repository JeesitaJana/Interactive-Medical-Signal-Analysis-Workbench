function resetZoomCallback()

    global VIEW_START;
    global VIEW_END;
    global ECG_DATA;
    global CURRENT_BEAT;

   
    // Restore full view
   
    VIEW_START = 1;
    VIEW_END   = 187;

    
    // Redraw current beat
    
    CURRENT_SIGNAL;

    classID = ECG_DATA(CURRENT_BEAT,188);
    label = getClassLabel(classID);

    plotSignal(CURRENT_SIGNAL, ...
               "ECG Signal", ...
               CURRENT_BEAT, ...
               label);
endfunction
