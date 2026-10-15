# A Low-Power RISC-V-Assisted TinyML Accelerator for Real-Time Multi-Class ECG Arrhythmia Detection on FPGA

## Overview

This project presents a low-power, FPGA-based TinyML accelerator for real-time multi-class ECG arrhythmia detection. The architecture combines hardware-based ECG preprocessing, feature extraction, a quantized neural network classifier, FSM-based adaptive control, and a lightweight RISC-V processor for system configuration and control.

The design targets efficient ECG signal processing for wearable healthcare devices and edge computing applications.

## Key Features

- **FPGA-Based Hardware Acceleration:** Dedicated hardware modules for ECG preprocessing, feature extraction, and neural network inference.
- **Streaming Architecture:** Processes ECG samples continuously without requiring external memory for intermediate feature buffering.
- **TinyML Classification:** Uses a compact feed-forward neural network with 8-bit fixed-point weights and activations.
- **ECG Feature Extraction:** Extracts RR interval, QRS duration, and signal energy.
- **FSM-Based Adaptive Control:** Coordinates preprocessing, feature extraction, inference, and classification output.
- **RISC-V Assistance:** Uses a lightweight RISC-V processor for configuration, control, and status monitoring through memory-mapped registers.
- **Hardware-Efficient Computation:** Uses DSP-assisted multiply-and-accumulate (MAC) operations for neural network inference.

## System Architecture

The proposed system consists of the following functional blocks:

1. ECG acquisition and streaming interface
2. Hardware-based ECG preprocessing
3. ECG feature extraction and quantization
4. TinyML neural network inference engine
5. FSM-based adaptive controller
6. RISC-V processor and AXI4-Lite control interface
7. Classification output and status registers

### ECG Preprocessing

The preprocessing pipeline includes:

- Band-pass filtering
- Derivative filtering
- Nonlinear transformation
- Moving-window integration
- R-peak detection

### Feature Extraction

The system extracts three features from the ECG signal:

- RR interval
- QRS duration
- Signal energy

These features are quantized using 8-bit fixed-point representation before being supplied to the classifier.

### TinyML Model

The classifier uses a compact fully connected neural network with the following configuration:

| Parameter | Configuration |
|---|---|
| Input features | 3 |
| First hidden layer | 16 neurons |
| Second hidden layer | 8 neurons |
| Output classes | 5 |
| Hidden-layer activation | ReLU |
| Output activation | Softmax |
| Weight precision | 8-bit fixed-point |
| Activation precision | 8-bit fixed-point |
| Trainable parameters | 245 |
| MAC operations per inference | 216 |

The five classification categories are normal rhythm, atrial fibrillation (AF), ventricular tachycardia (VT), ventricular fibrillation (VF), and premature ventricular contraction (PVC).

## FPGA Implementation and Results

The hardware architecture was implemented and analyzed using the Xilinx Vivado Design Suite on a Xilinx Artix-7 FPGA platform.

| Metric | Reported result |
|---|---:|
| Overall classification accuracy | 98.2% |
| Slice LUTs | 231 (0.36%) |
| Slice registers | 84 (0.06%) |
| DSP blocks | 29 (12.08%) |
| BRAM tiles | 0 (0%) |
| Total power consumption | 0.086 W |
| Target clock frequency | 100 MHz |
| Maximum achievable frequency | 67.8 MHz |
| Critical path delay | 14.733 ns |
| Energy per beat | 2.53 nJ |

Classification evaluation uses the MIT-BIH Arrhythmia Database.

## Tools and Technologies

- Verilog HDL
- Xilinx Vivado Design Suite 2024.2
- FPGA-based digital hardware design
- Fixed-point arithmetic and quantized neural network inference
- RISC-V-assisted hardware/software co-design
- AXI4-Lite memory-mapped control
- ECG signal processing and TinyML

## Repository Structure

The repository should contain the actual project files, organized according to the available implementation:

```text
fpga-tinyml-ecg-accelerator/
├── rtl/                 # Verilog RTL modules
├── tb/                  # Testbenches, if available
├── docs/                # Architecture diagrams and reports
└── README.md
```

## Verification and Evaluation

The project evaluates classification performance, FPGA resource utilization, power consumption, and timing performance. The reported results demonstrate a compact hardware architecture for ECG arrhythmia classification with low resource utilization and power consumption.

## Research Paper

**Title:** A Low-Power RISC-V Assisted TinyML Accelerator for Real-Time Multi-Class ECG Arrhythmia Detection on FPGA

**Author:** Alok Jiten Rao

**Affiliation:** Department of Electronics and Telecommunication Engineering, Veer Surendra Sai University of Technology (VSSUT), Burla, Odisha, India.

The research investigates streaming FPGA acceleration, fixed-point TinyML inference, hardware-based ECG feature extraction, and RISC-V-assisted system control.

## Applications

- Wearable ECG monitoring
- Edge healthcare systems
- Real-time biomedical signal processing
- FPGA-based TinyML acceleration
- Low-power embedded healthcare devices

## Author

**Alok Jiten Rao**

Electronics and Telecommunication Engineering  
Veer Surendra Sai University of Technology (VSSUT), Burla

- GitHub: [alokjiten](https://github.com/alokjiten)
- LinkedIn: [Alok Jiten Rao](https://www.linkedin.com/in/alokjitenrao)
- Email: jitenalok03@gmail.com
