function exportPlot()

    [filename,pathname] = uiputfile("ECG_Plot.png","Save Plot");

    if filename=="" then
        return;
    end

    fullpath = fullfile(pathname,filename);

    xs2png(gcf(),fullpath);

    messagebox("Plot exported successfully!",...
               "Export");
endfunction
