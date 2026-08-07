function peakDetectionCallback()

    global CURRENT_SIGNAL;
    global CURRENT_BEAT;
    global ECG_DATA;
    global PLOT_AXES;

  
    // Check Data
  

    if isempty(CURRENT_SIGNAL) then
        messagebox("Please load a CSV first.","No Data","error");
        return;
    end


    // Plot Current Signal

    classID = ECG_DATA(CURRENT_BEAT,188);
    label = getClassLabel(classID);

    plotSignal(CURRENT_SIGNAL,...
               "ECG Signal",...
               CURRENT_BEAT,...
               label);


    // Detect Peak

    [peakValue, peakIndex] = detectPeak(CURRENT_SIGNAL);


    // Highlight Peak

    sca(PLOT_AXES);

    plot(peakIndex,peakValue,"ro");

    e = gce();
    e.children.mark_size = 12;
    e.children.thickness = 3;


    // Label Peak


    xstring(peakIndex+2,...
            peakValue,...
            msprintf("R Peak\n%.3f",peakValue));


    // Message

    messagebox(...
        msprintf("Peak Index : %d\nPeak Value : %.4f",...
        peakIndex,...
        peakValue),...
        "Peak Detection");

endfunction
