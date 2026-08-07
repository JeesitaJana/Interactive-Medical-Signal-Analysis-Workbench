<div align="center">

# 🫀 Interactive Medical Signal Analysis Workbench

### An Open-Source GUI-Based Educational Biomedical Signal Analysis Platform Developed Using Scilab

<img src="screenshots/main_gui.png" width="900"/>

![Scilab](https://img.shields.io/badge/Scilab-2025-blue)
![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20Linux-success)
![Language](https://img.shields.io/badge/Language-Scilab-orange)
![License](https://img.shields.io/badge/License-MIT-green)
![Biomedical](https://img.shields.io/badge/Domain-Biomedical%20Signal%20Processing-red)

</div>

---

# 📖 Overview

The **Interactive Medical Signal Analysis Workbench** is an open-source graphical application developed entirely using **Scilab** to provide an interactive environment for **ECG signal visualization, preprocessing, statistical analysis, frequency-domain analysis, and digital signal processing**.

Unlike traditional script-based signal processing workflows, this application integrates multiple DSP operations into a single intuitive graphical interface, enabling users to explore biomedical signals without writing Scilab commands.

The workbench is designed primarily for **education**, **research prototyping**, and **laboratory demonstrations**, making biomedical signal processing concepts more interactive and accessible.

---

# 🎯 Problem Statement

Electrocardiogram (ECG) signals are widely used to assess cardiac health. However, raw ECG recordings frequently contain baseline drift, motion artifacts, and high-frequency noise that require preprocessing before meaningful interpretation.

Most available solutions are either:

- Proprietary software requiring expensive licenses
- Script-based environments requiring programming expertise
- Clinical systems not intended for education

There is a need for an interactive, open-source application that combines ECG visualization and classical DSP techniques within a single graphical environment.

This project addresses that need through a modular GUI developed using Scilab.

---

# 💡 Key Features

## 📂 Dataset Management

- Load ECG datasets from CSV files
- Automatic initialization of analysis environment

---

## 📈 Interactive ECG Visualization

- Real-time ECG plotting
- Beat-wise visualization
- Dynamic graph updates

---

## 🔍 Navigation

- Next Beat
- Previous Beat

---

## 🔎 View Controls

- Zoom In
- Zoom Out
- Reset Zoom
- Pan Left
- Pan Right
- Reset Plot

---

## ⚙️ Signal Processing

- Moving Average Filter
- Median Filter
- Low-pass Filter
- High-pass Filter

---

## 📊 Signal Analysis

- Fast Fourier Transform (FFT)
- Dominant Frequency Detection
- Peak Detection
- Statistical Feature Extraction

---

## 📤 Export

- Export Processed ECG Signal (CSV)
- Export ECG Plot (PNG)

---

# 🏗 Software Architecture

```
                    ECG CSV Dataset
                           │
                           ▼
                  Open CSV Module
                           │
                           ▼
                  Global Data Manager
                           │
                           ▼
                    Graphical User Interface
 ┌────────────────────────────────────────────────────┐
 │                                                    │
 │   Left Panel      Plot Area      Right Panel       │
 │                                                    │
 └────────────────────────────────────────────────────┘
                           │
                           ▼
                 Signal Processing Layer
      ┌────────────────────────────────────┐
      │ FFT │ Peak │ Filters │ Statistics  │
      └────────────────────────────────────┘
                           │
                           ▼
                    Visualization Layer
                           │
                           ▼
                 CSV Export / PNG Export
```

---

# 📂 Folder Structure

```
Interactive-Medical-Signal-Analysis-Workbench/

├── callbacks/
├── gui/
├── plotting/
├── processing/
├── utils/
├── datasets/
├── screenshots/
├── README.md
└── main.sce
```

---

# 🖥 GUI Overview

| Module | Description |
|---------|-------------|
| Left Control Panel | Dataset loading, navigation, view controls |
| Plot Area | ECG visualization |
| Right Control Panel | Signal processing and analysis |
| Statistics Panel | Beat information and computed statistics |

---

# 🧠 Implemented Algorithms

- Statistical Analysis
- Peak Detection
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

# 🚀 Installation

1. Install Scilab.
2. Clone this repository.
3. Open Scilab.
4. Navigate to the project directory.
5. Execute:

```scilab
exec("main.sce",-1)
```

6. Click **Open CSV**.
7. Select an ECG dataset.
8. Start exploring the signal.

---

# 📷 Sample Results

### Main GUI

*(Insert Screenshot)*

---

### Peak Detection

*(Insert Screenshot)*

---

### FFT Spectrum

*(Insert Screenshot)*

---

### Filtered ECG

*(Insert Screenshot)*

---

# 🎓 Educational Applications

- Biomedical Signal Processing
- Digital Signal Processing
- Biomedical Engineering Laboratories
- Engineering Education
- Research Prototyping
- GUI Development using Scilab

---

# 🔮 Future Scope

- Real-time ECG Acquisition
- Heart Rate Variability Analysis
- Multi-lead ECG Support
- AI-assisted Arrhythmia Classification
- Wavelet-based Signal Denoising
- ECG Annotation Tools
- Automatic Report Generation

---

# 📚 References

1. Scilab Documentation — https://help.scilab.org
2. PhysioNet MIT-BIH Arrhythmia Database — https://physionet.org
3. Oppenheim, A. V., Schafer, R. W. *Discrete-Time Signal Processing.*
4. Webster, J. G. *Medical Instrumentation: Application and Design.*

---

# 👩‍💻 Author

**Jeesita Jana**

B.Tech – Artificial Intelligence & Data Science (Medical Engineering)

Amrita Vishwa Vidyapeetham

---

⭐ If you found this project useful, consider giving the repository a star.