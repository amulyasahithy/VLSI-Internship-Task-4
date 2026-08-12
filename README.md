# VLSI Design Internship – Task 4

## RTL Design of Finite State Machines (FSM) and Control Units

This task focuses on designing and simulating Finite State Machines (FSMs) using Verilog HDL.

## Objectives

* Design a Moore FSM
* Design a Mealy FSM
* Implement a Traffic Light Controller
* Design a 1011 Sequence Detector
* Develop Verilog testbenches
* Verify state transitions and output behavior through simulation

## Designs Implemented

### 1. Moore FSM

A three-state FSM with the following transition sequence:

```text
S0 → S1 → S2 → S0
```

### 2. Mealy FSM

A two-state FSM where the output depends on the current state and input.

The output becomes HIGH when:

```text
State = S1
Input = 1
```

### 3. Traffic Light Controller

The controller uses three states:

```text
S0 → RED
S1 → GREEN
S2 → YELLOW
```

The sequence is:

```text
RED → GREEN → YELLOW → RED
```

### 4. 1011 Sequence Detector

A sequence detector designed to detect the serial binary pattern:

```text
1011
```

The `detected` output becomes HIGH when the complete sequence is received.

## Tools Used

* Verilog HDL
* Xilinx ISE
* ISim Behavioral Simulator

## Verification

Each RTL design is verified using a dedicated Verilog testbench.

The simulations verify:

* Reset behavior
* Correct state transitions
* Output behavior
* Timing of FSM transitions
* 1011 pattern detection

## Results

The four FSM-based RTL designs were implemented and verified through behavioral simulation using Xilinx ISE/ISim.

## Author

**Amulya Sahithy Misra**

Electronics and Communication Engineering

VLSI Design Internship – Task 4
