function plotSignal(signal, graphTitle, beatNumber, beatClass)
    
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
    title(msprintf("%s - Beat %d (%s)", ...
               graphTitle, ...
               beatNumber, ...
               beatClass));

    xgrid();

    // Detect peak
    [peakValue, peakIndex] = detectPeak(signal);

    // Hold current plot
    e = gce();
    e.children.thickness = 2;

    // Plot red marker
    plot(peakIndex, peakValue, "ro");

endfunction
