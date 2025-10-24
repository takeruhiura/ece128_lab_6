# ECE 128 Lab 6 README File


## Project Description
The lab focuses on fundamental circuit concepts in FPGA and computer logic such as flip flops and latches. The lab also involves other useful concepts such as counters and clock dividers which will be important concepts used in future labs. The hardware implementation involves a debouncer which is represented through a button and LED on the board. This helps visualize the concept of debouncing which is a critical programming technique in embedded software development. 

## How to simulate the program and implement it on the FPGA 
To simulate the program, ensure that each model file is located in the design sources, the constraints file is in the constraints directory, and the testbench file is in the simulation sources directory. Since there are multiple modules and testbenches, make sure the modules you want to simulate are set to top in Vivado. To run the simulation, go to the navigator on the left side of Vivado and click run simulation, then run behavioral simulation to output the waveforms of the testbench. 

To program the FPGA with the debouncer, make sure the proper module, testbench, and constraint file are selected. Then run the implementation, and generate the bitstream. Once the bitstream is generated, open the hardware manager and program the board using the .bit file. 
