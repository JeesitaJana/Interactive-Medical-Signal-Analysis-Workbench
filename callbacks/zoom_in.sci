function zoomInCallback()
    
    disp("Zoom In Button Pressed");

    global VIEW_START;
    global VIEW_END;
    global ECG_DATA;
    global CURRENT_BEAT;
    
    


    // Current viewing width

    
    width = VIEW_END - VIEW_START + 1;


    // Stop excessive zooming


    if width <= 30 then
        return;
    end


    // Calculate new width


    newWidth = floor(width / 2);


    // Find centre


    centre = floor((VIEW_START + VIEW_END) / 2);


    // Update limits


    VIEW_START = max(1, centre - floor(newWidth / 2));
    VIEW_END   = min(187, VIEW_START + newWidth - 1);


    // Refresh graph


    CURRENT_SIGNAL

    classID = ECG_DATA(CURRENT_BEAT,188);
    label = getClassLabel(classID);

    plotSignal(CURRENT_SIGNAL, ...
               "ECG Signal", ...
               CURRENT_BEAT, ...
               label);

endfunction
