function exportSignal(signal, beatNumber)


    // Ask user for file name

    [filename, pathname] = uiputfile( ...
         msprintf("Beat_%d.csv", beatNumber), ...
         "Save ECG Signal");

    if filename == "" then
        return;
    end

    // Full path

    fullpath = fullfile(pathname, filename);

// Create Export Data


    samples = (1:length(signal))';

    exportData = [samples signal'];


// Export

    csvWrite(exportData, fullpath);


    // Success Message

    messagebox( ...
         msprintf("Beat %d exported successfully!", beatNumber), ...
         "Export Complete", ...
         "info");
endfunction
