function stats = calculateStatistics(signal)

    stats = struct();

    stats.mean = mean(signal);

    stats.maximum = max(signal);

    stats.minimum = min(signal);

    stats.std = stdev(signal);

    stats.samples = length(signal);

endfunction
