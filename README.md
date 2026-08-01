# 🫀 Interactive Medical Signal Analysis Workbench

An interactive GUI-based ECG Signal Analysis Workbench developed using **Scilab** for visualization, analysis, filtering, and processing of Electrocardiogram (ECG) signals. The application provides an intuitive graphical interface for exploring ECG data, performing signal processing operations, visualizing frequency-domain characteristics, detecting R-peaks, and exporting processed results.

---

## 📌 Overview

Electrocardiogram (ECG) analysis is an essential part of cardiovascular diagnosis. Raw ECG signals often contain noise and require processing before meaningful interpretation. This project provides a user-friendly Scilab GUI that enables users to load ECG datasets, visualize heartbeats, apply digital filters, perform frequency analysis, detect signal peaks, and analyze statistical characteristics—all without writing Scilab commands.

The project demonstrates the integration of GUI development with digital signal processing techniques in Scilab.

---

# ✨ Features

### 📂 Data Handling

- Load ECG data from CSV files
- Navigate through individual heartbeats
- Reset signal to its original state

### 📈 Signal Visualization

- Interactive ECG waveform plotting
- Zoom In / Zoom Out
- Pan Left / Pan Right
- Reset Zoom
- Reset Plot

### 📊 Signal Analysis

- ECG Statistics
  - Mean
  - Maximum
  - Minimum
  - Standard Deviation
  - Number of Samples
- FFT Spectrum Analysis
- Dominant Frequency Detection

### ❤️ Peak Detection

- Automatic R-Peak Detection
- Peak Highlighting on ECG Signal

### 🎛 Signal Processing Filters

- Moving Average Filter
- Median Filter
- Low-pass Filter
- High-pass Filter

### 📤 Export

- Export Processed ECG Signal as CSV
- Export ECG Plot as PNG

### 🖥 Graphical User Interface

- Interactive Control Panels
- Organized Layout
- Real-time Statistics Panel
- Dynamic Graph Updates

---

# 🏗 Project Architecture

```
Interactive-Medical-Signal-Analysis-Workbench
│
├── callbacks/
│   ├── open_csv.sci
│   ├── next_beat.sci
│   ├── previous_beat.sci
│   ├── zoom_in.sci
│   ├── zoom_out.sci
│   ├── reset_zoom.sci
│   ├── reset_plot.sci
│   ├── pan_left.sci
│   ├── pan_right.sci
│   ├── fft_callback.sci
│   ├── peak_detection_callback.sci
│   ├── moving_average_callback.sci
│   ├── median_filter_callback.sci
│   ├── lowpass_filter_callback.sci
│   ├── highpass_filter_callback.sci
│   └── export_callback.sci
│
├── gui/
├── plotting/
├── processing/
├── utils/
├── datasets/
├── screenshots/
├── main.sce
└── README.md
```

---

# 🛠 Technologies Used

- Scilab
- Scilab GUI Components (uicontrol)
- Digital Signal Processing
- FFT
- Biomedical Signal Processing
- CSV Data Processing

---

# 📊 Signal Processing Techniques

The application implements multiple ECG signal processing algorithms:

- Fast Fourier Transform (FFT)
- Moving Average Filtering
- Median Filtering
- First-order Low-pass Filtering
- First-order High-pass Filtering
- R-Peak Detection
- Statistical Feature Extraction

---

# 📷 Application Preview

Add screenshots here after uploading them.

### Main Interface

```
screenshots/main_gui.png
```

### FFT Analysis

```
screenshots/fft_analysis.png
```

### Peak Detection

```
screenshots/peak_detection.png
```

### Filtered ECG Signal

```
screenshots/filtered_signal.png
```

---

# 🚀 How to Run

1. Install Scilab.
2. Clone this repository.

```
git clone https://github.com/YOUR_USERNAME/Interactive-Medical-Signal-Analysis-Workbench.git
```

3. Open Scilab.
4. Open the project folder.
5. Execute

```
main.sce
```

6. Click **Open CSV**.
7. Load an ECG dataset.
8. Explore the available analysis tools.

---

# 📋 GUI Workflow

```
Load CSV
      │
      ▼
Display ECG Signal
      │
      ▼
Navigate Heartbeats
      │
      ▼
Zoom / Pan
      │
      ▼
Apply Filters
      │
      ▼
Peak Detection
      │
      ▼
FFT Analysis
      │
      ▼
Export Results
```

---

# 📈 Future Improvements

- Multi-lead ECG Support
- Wavelet Transform Analysis
- Automatic Arrhythmia Classification
- Real-time ECG Monitoring
- ECG Annotation Tools
- AI-based Disease Prediction
- DICOM Integration
- Advanced Biomedical Visualization

---

# 🎯 Applications

- Biomedical Signal Processing
- Medical Education
- ECG Visualization
- Digital Signal Processing Learning
- Engineering Laboratory Demonstrations
- Biomedical Engineering Projects

---

# 👩‍💻 Author

**Jeesita Jana**

B.Tech – Artificial Intelligence & Data Science (Medical Engineering)

Amrita Vishwa Vidyapeetham

---

# 📜 License

This project is released under the **MIT License**.

---

# 🙏 Acknowledgements

- Scilab Team
- GUIVerse Hackathon Organizers
- PhysioNet MIT-BIH Arrhythmia Dataset
- Amrita Vishwa Vidyapeetham
