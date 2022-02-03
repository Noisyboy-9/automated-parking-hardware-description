# Automated Parking Hardware Description
In fall 2022 I selected course Logic circuits under supervision of [Dr.Saheb Zamani](https://scholar.google.com/citations?user=qMmvqUwAAAAJ&hl=en). <br>
In this course we were taught about:
- Basic logic gates
- Combinational circuits analysis
- Methods for simplifying boolean functions such as:
  - Karnaugh table
  - Quine-McCluskey Algorithm
  - Boolean Algebra
- Basic Circuits such as:
  - Multiplexer
  - De-multiplexer
  - encoder
  - decoder
- Sequential Circuits and their design
- Flip flops
- Techniques to optimize Sequential circuits
- Verilog language and writing Verilog test benches

## Project Description
In this project we had to create automated parking management system using Verilog.<br>
This project had 7 modules which were:

### Module 1
In this module, a car `entry` is being detected and will be given as input to the FPGA and then the FPGA will determines if there is capacity for the new car, based on `Parking capacity`, and if so, it will generate a 3bit `park number`.
### Module 2
In this module the `park number` generated from the last module will be encoded using an input `pattern` and a `token` will be generated.
### Module 3
This module handles cars exiting from the parking. It will detect a car exiting from its parking using sensors and gives the result as `exit` input to the FPGA and then the `token` and `pattern` of the exiting car will be collected and the `park location` which the car was parked in is detected.<br>
At the last step based on that `park location` a new `parking capacity` will be generated.
### Module 4
In this module the FPGA gets `time_in` and `time_out` as input and calculates the `time` the car was parked in the parking.
### Module 5
This module was a bonus module. <br> 
In this module we had to calculate the number of `parked` and `empty` slots in parking using an `new capacity` input given to the FPGA and for calculating this we had to hierarchical structure using basic gates.
### Module 6
This module just tries to wire the last 5 module to each other and acts as a top level module to redirect inputs and outputs between modules.
### Module 7
In this module we had to implement a FSM managing the state of the user interactions with parking system.<br>
In this module the user first starts the system by making `request = 1` and then inputs and confirms a `user_token` and then the systems compares the `user_token` with `system_token` if they match it will procced to get `time_data` which shows how much time the car was parked in the parking and stores it in a register. If the `user_token` and `system_token` doesn't match the system enters trap mode and the system stops getting inputs.

## Implementation Details
All of the modules mentioned above have their own folder in the project and for every module in the system a test bench is provided testing that the module works as expected.<br>
This project was a team project, which I worked with my friend [Kimia Montazeri](https://github.com/KimiaMontazeri). <br>
We had implement to this project in 2 phases:
1. In phase 1 we had to implement modules 1 - 5
2. In phase 2 we had to implement modules 6 and 
<br>
A documentation folder has been added containing detailed description about the implementation details of every module.