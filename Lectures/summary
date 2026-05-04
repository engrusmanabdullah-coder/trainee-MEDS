# Computer Architecture — Lecture-wise Notes

---

## Lecture 1: Introduction to Computer Architecture & CMOS

- **Computer Architecture** = interface between hardware and software  
- **Microarchitecture** = internal implementation of hardware  

- **Why computers?**
  - Solve problems  
  - Extract insights from data  

- **How computers work:**
  - Execute instructions using processor, memory, and logic circuits  

- **CMOS Basics:**
  - **NMOS:** strong ‘0’, weak ‘1’  
  - **PMOS:** strong ‘1’, weak ‘0’  
  - **CMOS Inverter:** basic building block of digital logic  

---

## Lecture 2: CMOS Constraints, Scaling, and Logic

- **CMOS behavior:**
  - Naturally inverting logic  
  - NMOS/PMOS strength mismatch  

- **Gate design:**
  - NAND = efficient (4 transistors)  
  - AND = NAND + inverter → more area and delay  

- **Performance metrics:**
  - **Moore’s Law:** transistor density doubles ~ every 2 years  
  - **Power ∝ voltage + frequency + switching activity**  
  - **Propagation delay:** input to stable output time  

- **Combinational logic:**
  - Based on Boolean algebra  
  - Output depends only on current inputs  

- **PLA (Programmable Logic Array):**
  - AND plane + OR plane  
  - Example: full adder implementation  

---

## Lecture 3: Combinational Logic & Memory

- **Combinational components:**
  - Comparators (A > B, A < B, A = B)  
  - ALU (arithmetic + logic operations)  
  - Tri-state buffer (bus sharing, high impedance)  

- **Memory basics:**
  - **SRAM (6T cell)** → stable storage  
  - Memory array = row decoder + word-line + bit-line  
  - **Sense amplifier** → fast read  

- **Tech stack:**
  - **HDL:** Verilog, VHDL  
  - **Tools:** ModelSim, Vivado  
  - Focus: timing and gate-level optimization  

---

## Lecture 4: FSM & FPGA

- **FSM (Finite State Machine):**
  - **Moore:** output depends only on state  
  - **Mealy:** output depends on state and input  

- **State encoding:**
  - Binary → fewer flip-flops  
  - One-hot → faster, more registers  
  - Output encoding → stable outputs  

- **FPGA architecture:**
  - **CLBs (LUT-based logic)**  
  - Programmable interconnects  
  - HDL → bitstream → hardware mapping  

- **Focus:**
  - FSM optimization  
  - Timing closure  

---

## Lecture 5: Hierarchical Design & Verilog

- **Hierarchical design:**
  - Top → Sub → Leaf modules  
  - Improves scalability and readability  

- **Module instantiation:**
  - Named / positional port mapping  

- **Modeling styles:**
  - **Dataflow:** assign statements  
  - **Behavioral:** always blocks  
  - **Structural:** gate-level  

- **Combinational vs Sequential:**
  - Comb → blocking (=), sensitivity (*)  
  - Seq → non-blocking (<=), clock edge  

- **Verilog basics:**
  - wires, regs, bit-vectors, parameters  

- **Focus:**
  - Modularity and abstraction  

---

## Lecture 6: Timing & Performance

- **Delay metrics:**
  - **Propagation delay (tpd):** maximum delay  
  - **Contamination delay (tcd):** minimum delay  

- **Critical path:**
  - Longest path → limits maximum clock frequency  

- **Sequencing overhead:**
  - Flip-flop delay + setup/hold time  

- **Glitches:**
  - Temporary incorrect outputs due to unequal delays  

- **Clock concepts:**
  - **Clock skew:** different arrival times  
  - Gate and wire delays impact performance  

- **Goals:**
  - Timing closure  
  - Avoid race conditions  
  - Calculate maximum operating frequency  

---
