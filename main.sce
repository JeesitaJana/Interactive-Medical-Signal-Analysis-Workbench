// Load GUI
exec("gui/create_main_window.sci",-1);
exec("gui/create_plot_area.sci",-1);
exec("gui/create_control_panel.sci",-1);
exec("gui/create_statistics_panel.sci",-1);

// Plotting
exec("plotting/plot_signal.sci",-1);
exec("plotting/plot_fft.sci",-1);
exec("plotting/plot_filtered_signal.sci",-1);

// Statistics
exec("processing/signal_statistics.sci",-1);
exec("processing/update_statistics_panel.sci",-1);
exec("processing/get_class_label.sci",-1);
exec("processing/peak_detection.sci",-1);
exec("processing/fft_analysis.sci",-1);
exec("processing/moving_average_filter.sci",-1);
exec("processing/median_filter.sci",-1);
exec("processing/lowpass_filter.sci",-1);
exec("processing/highpass_filter.sci",-1);
exec("processing/export_signal.sci",-1);
exec("processing/export_plot.sci",-1);

// Globals
exec("utils/global_data.sci",-1);

// Callbacks
exec("callbacks/open_csv.sci",-1);
exec("callbacks/next_beat.sci",-1);
exec("callbacks/previous_beat.sci",-1);
exec("callbacks/zoom_in.sci", -1);
exec("callbacks/zoom_out.sci", -1);
exec("callbacks/reset_zoom.sci", -1);
exec("callbacks/reset_plot.sci", -1);
exec("callbacks/pan_left.sci", -1);
exec("callbacks/pan_right.sci", -1);
exec("callbacks/fft_callback.sci",-1);
exec("callbacks/peak_detection_callback.sci",-1);
exec("callbacks/moving_average_callback.sci",-1);
exec("callbacks/median_filter_callback.sci",-1);
exec("callbacks/lowpass_filter_callback.sci",-1);
exec("callbacks/highpass_filter_callback.sci",-1);
exec("callbacks/export_callback.sci",-1);
exec("callbacks/export_plot_callback.sci",-1);

// Create GUI
mainWindow = createMainWindow();

plotArea = createPlotArea();

createControlPanel();
createStatisticsPanel();

disp("Application Started Successfully.");
