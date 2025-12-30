🧮 2-Bit ALU Design using VHDL
📌 Project Overview

This project implements a 2-bit Arithmetic Logic Unit (ALU) using VHDL.
The ALU performs multiple arithmetic and logical operations based on select control signals.
The design is written using combinational RTL logic and verified through functional simulation in Xilinx Vivado.

🛠 Tools & Technologies

Language: VHDL

Simulator & Synthesizer: Xilinx Vivado

Libraries Used: IEEE STD_LOGIC_1164, NUMERIC_STD

🔧 ALU Inputs & Outputs
Inputs

A : 2-bit input operand

B : 2-bit input operand

SEL : Control signal (selects operation)

Outputs

RESULT : 2-bit output

CARRY : Carry output (valid for addition)

| SEL | Operation | Description      |
| --- | --------- | ---------------- |
|  00 | ADD       | A + B            |
|  01 | SUB       | A − B            |
|  10 | AND       | A AND B          |
|  11 | OR        | A OR B           |

🧪 Verification

A VHDL testbench was written to test all possible input combinations

Functional correctness verified using simulation waveforms

RTL architecture and synthesized design analyzed in Vivado <br>

📚 Key Learnings

RTL-level ALU design using VHDL

Arithmetic operations using NUMERIC_STD

Signal vs variable behavior in combinational logic

Testbench-based functional verification

RTL and synthesis flow in Vivado <br>


🏁 Conclusion

This project demonstrates the implementation and verification of a basic 2-bit ALU, strengthening fundamental concepts in digital logic design and VHDL-based RTL development.
