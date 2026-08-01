// =========================================
// Main Application Window
// =========================================

// Create the main application window
mainWindow = figure();

// Window properties
mainWindow.figure_name = ...
    "Interactive Medical Signal Analysis Workbench";

mainWindow.background = -2;
mainWindow.figure_position = [100 50];
mainWindow.figure_size = [1200 700];
mainWindow.visible = "on";

// Get the current axes
plotArea = gca();

// Configure the axes
plotArea.axes_visible = "on";
plotArea.box = "on";

// Labels
xlabel("Time");
ylabel("Amplitude");
title("Medical Signal Display");

// Grid
xgrid();



// =========================================
// Sample Signal
// =========================================

// Generate X values
time = 0:0.01:10;

// Generate sine wave
signal = sin(time) + 0.5 * sin(3 * time);

// Plot the signal
plot(time, signal);

// Labels
xlabel("Time (seconds)");
ylabel("Amplitude");

title("Sample Medical Signal");

// Grid
xgrid();

// =========================================
// Open CSV Button
// =========================================

openButton = uicontrol( ...
    "style", "pushbutton", ...
    "string", "Open CSV", ...
    "position", [20 650 120 35]);
    disp("Open Button Created");
    
statusLabel = uicontrol( ...
    "style", "text", ...
    "string", "Status: Ready", ...
    "position", [20 610 180 25]);
    disp("Status Label Created");

// Confirmation
disp("Main window and plot area created successfully.");
