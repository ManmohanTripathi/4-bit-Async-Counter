# 4-bit-Async-Counter
# 4-Bit Asynchronous Counter

This project is a **4-bit asynchronous counter** implemented in Verilog. It uses T flip-flops to count binary sequences on every negative clock edge. The design includes both the counter logic and a testbench for simulation.

##  Features
- **Asynchronous Design:** T flip-flops connected in a ripple fashion.
- **Verilog Implementation:** Clean and modular Verilog code with testbench.
- **Waveform Simulation:** Generates a `.vcd` file to visualize the counter transitions.

## 📂 Project Structure
```
├── counter.v          # 4-bit asynchronous counter design
├── testbench.v        # Testbench to verify the counter functionality
```
## Design Details

 ->Modules

- ** async_4bit: The main module, chaining four T flip-flops.

- ** T_FF: A T flip-flop that toggles on the negative clock edge when T is high.

 ->Testbench

The testbench generates a clock signal and toggles the T input, observing the counter outputs (Q0-Q3) over time.


## 🛠️ How to Run
** Option 1: EDA Playground (Online Simulation)

->Open this link to view the project on EDA Playground.

->Choose Aldec Riviera Pro as the simulator.

->Click Run to compile and simulate the design (requires a free EDA Playground account).

->Download the generated VCD file to view waveforms in any compatible viewer.

** Option 2: Local Setup (Using GitHub)

->Clone the repository:

->Open the project in your preferred Verilog simulator (e.g., ModelSim, Vivado, or Aldec Riviera Pro).

->Compile the design and testbench files.

->Run the simulation and analyze the waveform output.

## Simulation Results
- Counts from `0000` to `1111`.
- Clock period: 20 time units.
- Total count cycle duration: 320 time units.
  
## Applications

 ->Digital System Design: Learn about asynchronous counters and sequential circuits.

 ->Education: Useful for FPGA/ASIC design courses and lab experiments.


## 📘 Learn More
- [Asynchronous Counters](https://en.wikipedia.org/wiki/Counter_(digital))
- [T Flip-Flop](https://en.wikipedia.org/wiki/Flip-flop_(electronics)#T_flip-flop)


