# SMDT_FPGA single_counter Branch
This branch contains the code for the single channel readout by Basys3.

## Prerequisites
If you are not familiar with FPGA, The tutorial branch is here for veiw.

## Running

 Connect the fpga board as shown below. JA port is connected with the digital output. WARNING: Input voltage should be 3.3V

![avatar](Plots/Connect.jpeg)

The real counter should be the number on the display divide by 10 by default. Line 89 of counter.vhdl is the setting of divider and can be set to any value based on the signal rate.  

## Simulation:

![avatar](Plots/Simu.JPG)

Click the blue high-lighted part and drag the counter_out into the black name column. This one is the total number of event recorded. Then restart the simulation. The factor of counter is one so the real number of event is 1 times the number on the sseg.Change it to 10  before you start real test for 1 layer scintillator.