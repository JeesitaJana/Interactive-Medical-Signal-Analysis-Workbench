function mainWindow = createMainWindow()

 
    // Create Main Window


    mainWindow = figure();

 
    // Window Title


    mainWindow.figure_name = ...
        "Interactive Medical Signal Analysis Workbench";


    // Window Position


    mainWindow.figure_position = [60 30];

  
    // Window Size
  

    mainWindow.figure_size = [1450 900];

 
    // Background Color
   
    mainWindow.background = -2;

 
    // Disable Window Resize
 
    mainWindow.resize = "off";


    // Show Window
 

    mainWindow.visible = "on";

endfunction
