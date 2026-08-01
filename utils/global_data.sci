// Global variables
global FILTER_WINDOW;

FILTER_WINDOW = 5;
global ECG_DATA;
global CURRENT_BEAT;
global PLOT_AXES;

ECG_DATA = [];
CURRENT_BEAT = 1;
PLOT_AXES = [];


global TXT_BEAT;
global TXT_CLASS;
global TXT_SAMPLES;
global TXT_MAX;
global TXT_MIN;
global TXT_MEAN;
global TXT_STD;

global VIEW_START;
global VIEW_END;

VIEW_START = 1;
VIEW_END = 187;


global TXT_DOM_FREQ;


global ORIGINAL_SIGNAL;
global CURRENT_SIGNAL;

ORIGINAL_SIGNAL = [];
CURRENT_SIGNAL = [];

global LOWPASS_ALPHA;

LOWPASS_ALPHA = 0.2;

global HIGHPASS_ALPHA;

HIGHPASS_ALPHA = 0.9;
