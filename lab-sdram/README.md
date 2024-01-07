# SDRAM Controller and SDRAM in Caravel User Project
## Run User Project Memory Enabled counter_la(matmul) Testbench
Run iverilog simulation
```sh
cd ~/caravel-soc_fpga-lab/lab-sdram/testbench/counter_la
source run_sim
```

Validate the matmul operation by observing whether the following terminal output is printed
```
Reading counter_la.hex
counter_la.hex loaded into memory
Memory 5 bytes = 0x6f 0x00 0x00 0x0b 0x13
VCD info: dumpfile counter_la.vcd opened for output.
LA Test 1 started
Received:    62
Received:    68
Received:    74
Received:    80
LA Test 2 passed
```

Note:
---
Our `counter_la.hex` is the same as `matmul.hex`, which is required by SoC TA.
