function lowpassFilterCallback()

    global CURRENT_SIGNAL;
    global LOWPASS_ALPHA;

    //-----------------------------------
    // Check Signal
    //-----------------------------------

    if isempty(CURRENT_SIGNAL) then
        messagebox("Please load a CSV first.", "No Data", "error");
        return;
    end

    //-----------------------------------
    // Apply Low-pass Filter
    //-----------------------------------

    CURRENT_SIGNAL = lowpassFilter(CURRENT_SIGNAL, LOWPASS_ALPHA);

    //-----------------------------------
    // Display
    //-----------------------------------

    classID = ECG_DATA(CURRENT_BEAT,188);

    label = getClassLabel(classID);

    plotFilteredSignal(CURRENT_SIGNAL,...
                       CURRENT_BEAT,...
                       label);

endfunction
