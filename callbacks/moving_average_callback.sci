function movingAverageCallback()

    global ECG_DATA;
    global CURRENT_BEAT;
    global CURRENT_SIGNAL;
    global FILTER_WINDOW;

    //-----------------------------------
    // Check data
    //-----------------------------------

    if size(ECG_DATA,"*")==0 then
        messagebox("Please load a CSV first.","No Data","error");
        return;
    end

    //-----------------------------------
    // Apply Moving Average
    //-----------------------------------

    CURRENT_SIGNAL = movingAverageFilter(CURRENT_SIGNAL, FILTER_WINDOW);

    //-----------------------------------
    // Display
    //-----------------------------------

    classID = ECG_DATA(CURRENT_BEAT,188);

    label = getClassLabel(classID);

    plotFilteredSignal(...
        CURRENT_SIGNAL,...
        CURRENT_BEAT,...
        label);

endfunction
