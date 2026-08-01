function updateStatisticsPanel(signal, beatNumber, classLabel)

    global TXT_BEAT;
    global TXT_CLASS;
    global TXT_SAMPLES;
    global TXT_MAX;
    global TXT_MIN;
    global TXT_MEAN;
    global TXT_STD;

    stats = calculateStatistics(signal);

    TXT_BEAT.string = ...
        "Beat Number : " + string(beatNumber);

    TXT_CLASS.string = ...
        "Class Label : " + classLabel;

    TXT_SAMPLES.string = ...
        "Samples : " + string(stats.samples);

    TXT_MAX.string = ...
        "Maximum : " + string(stats.maximum);

    TXT_MIN.string = ...
        "Minimum : " + string(stats.minimum);

    TXT_MEAN.string = ...
        "Mean : " + string(round(stats.mean*10000)/10000);

    TXT_STD.string = ...
        "Std Dev : " + string(round(stats.std*10000)/10000);

endfunction
