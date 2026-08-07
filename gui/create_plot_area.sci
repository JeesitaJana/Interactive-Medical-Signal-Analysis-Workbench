function plotArea = createPlotArea()

    global PLOT_AXES;

    // Clear Figure

    clf();


    // Create Axes

    plotArea = newaxes();

    // Graph Position

    plotArea.axes_bounds = [0.11 0.02 0.80 0.60];

    plotArea.axes_visible = "on";
    plotArea.box = "on";

    xlabel("Sample Number");
    ylabel("Amplitude");

    title("No ECG Signal Loaded");

    xgrid();

    PLOT_AXES = plotArea;

endfunction
