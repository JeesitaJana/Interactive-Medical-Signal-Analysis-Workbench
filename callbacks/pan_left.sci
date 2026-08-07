function panLeftCallback()

    global VIEW_START;
    global VIEW_END;
    global ECG_DATA;
    global CURRENT_BEAT;

    
    // Don't pan if full signal is visible
   

    if VIEW_START == 1 & VIEW_END == 187 then
        return;
    end

  
    // Pan left

    panStep = 10;

    VIEW_START = max(1, VIEW_START - panStep);
    VIEW_END   = max(VIEW_START + 29, VIEW_END - panStep);

    heartbeat = ECG_DATA(CURRENT_BEAT,1:187);

    plotSignal(heartbeat,"ECG Signal");

endfunction
