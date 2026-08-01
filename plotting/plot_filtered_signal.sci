function plotFilteredSignal(signal, beatNumber, beatClass)

    global PLOT_AXES;
    global VIEW_START;
    global VIEW_END;

    sca(PLOT_AXES);

    delete(PLOT_AXES.children);

    x = 1:length(signal);

    plot(x, signal);

    a = gca();
    a.data_bounds = [VIEW_START, min(signal); VIEW_END, max(signal)];

    xlabel("Sample Number");
    ylabel("Amplitude");

    title(msprintf("Filtered ECG Signal - Beat %d (%s)", ...
                   beatNumber, ...
                   beatClass));

    xgrid();

    e = gce();
    e.children.thickness = 2;
    
    //-----------------------------------
// Detect Peak
//-----------------------------------

    [peakValue,peakIndex] = detectPeak(signal);


// Draw Marker

    plot(peakIndex,peakValue,"ro");

    e = gce();
    e.children.mark_size = 8;
    e.children.thickness = 2;

endfunction
