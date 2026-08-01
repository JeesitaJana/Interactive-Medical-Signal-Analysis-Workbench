function exportCallback()

    global CURRENT_SIGNAL;
    global CURRENT_BEAT;

    //-----------------------------------
    // Check Signal
    //-----------------------------------

    if isempty(CURRENT_SIGNAL) then
        messagebox("Please load a CSV first.", ...
                   "No Data", ...
                   "error");
        return;
    end

    //-----------------------------------
    // Export Current Signal
    //-----------------------------------

    exportSignal(CURRENT_SIGNAL, CURRENT_BEAT);

endfunction
