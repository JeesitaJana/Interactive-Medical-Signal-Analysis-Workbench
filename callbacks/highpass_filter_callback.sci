function highpassFilterCallback()

    global CURRENT_SIGNAL;
    global HIGHPASS_ALPHA;


    // Check Signal


    if isempty(CURRENT_SIGNAL) then
        messagebox("Please load a CSV first.","No Data","error");
        return;
    end


    // Apply High-pass Filter


    CURRENT_SIGNAL = highpassFilter(CURRENT_SIGNAL, HIGHPASS_ALPHA);


    // Display

    classID = ECG_DATA(CURRENT_BEAT,188);

    label = getClassLabel(classID);

    plotFilteredSignal(CURRENT_SIGNAL,...
                       CURRENT_BEAT,...
                       label);

endfunction
