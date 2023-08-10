# sMDT_FPGA
FPGA development for sMDT cosmic ray station. The aim is to use the Basys3 to make coincidence logic for the cosmic ray test of Michigan State sMDT mini-chamber using two pieces of scintillator. The hardware needed is 1 basys3 FPGA board.


## Tutorial
Please refer to the tutorial branch if you are not familiar with FPGA.

Some material which are helpful for starting FPGA programming:

1.[Basys3 user mannul](https://digilent.com/reference/_media/reference/programmable-logic/basys-3/basys3_rm.pdf)

2.[VHDL introduction](https://faculty-web.msoe.edu/johnsontimoj/EE3921/files3921/Book_FreeRangeVHDL.pdf): The code will mainly in VHDL language. So refer to this 'Free Range HDL' to learn how to write VHDL.

In the tutorial branch, the project create the AND logic controlled by the switches on the borad. If the sw[0] and sw[1](see the notation in the mannul or on the board) are on the led[0] will be on.

### Preparation

The hardware needed in this tutorial will be the Basys3 FPGA borad and a micro-b USB cable that can transfer data. Download the Vivado on computer and put all file under a new project.

### Run

1. There are 3 files that you need to take a look. First is the Basys-3-Master.xdc provided by the digilent company. This is the constrain file that connects the pins on the board to your program.
   Second is the AND.vhd, the VHDL file for the logic part. Third is the and_tb.vhd, the simulation file to run a behavioral simulation.

2. First step is to Run Synthesis in vivado, then Run Simulation, Run Implementation, Generate Bitstream. Before Program Device, connect your FPGA board to the PC.
