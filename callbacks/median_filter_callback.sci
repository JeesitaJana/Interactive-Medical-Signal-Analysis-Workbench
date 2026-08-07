function medianFilterCallback()

    global CURRENT_SIGNAL;
    global FILTER_WINDOW;



    // Check Signal

    if isempty(CURRENT_SIGNAL) then
        messagebox("Please load a CSV first.","No Data","error");
        return;
    end

    // Apply Median Filter

    CURRENT_SIGNAL = medianFilter(CURRENT_SIGNAL, FILTER_WINDOW);

    // Display

    classID = ECG_DATA(CURRENT_BEAT,188);

    label = getClassLabel(classID);

    plotFilteredSignal(CURRENT_SIGNAL,...
                       CURRENT_BEAT,...
                       label);

endfunction
