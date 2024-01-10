# 2023 SoC Design Lab Final Project: WorkLoad Optimize SOC (WLOS)


### Simulation for 3 workloads (matmul, fir, sort)
```sh
cd final_project/testbench/top
source run_clean
source run_sim
```
<br>

### First: execute (matmul, fir, sort) via `ARM processor`
```sh
Reading top.hex
top.hex loaded into memory
Memory 5 bytes = 0x6f 0x00 0x00 0x0b 0x13
LA mm 1 started
mm latency: 73729
Call function matmul() in User Project BRAM (mprjram, 0x38000000) return value passed, 0x003e
Call function matmul() in User Project BRAM (mprjram, 0x38000000) return value passed, 0x0044
Call function matmul() in User Project BRAM (mprjram, 0x38000000) return value passed, 0x004a
Call function matmul() in User Project BRAM (mprjram, 0x38000000) return value passed, 0x0050
LA mm 2 passed
LA fir 1 started
LA fir 2 passed
fir latency: 162936
LA qs 1 started
qs latency: 29525
Call function qsort() in User Project BRAM (mprjram, 0x38000000) return value passed, 0x0028
Received    40
Received   893
Received  2541
Received  2669
LA qs 2 passed

```
<br>

### Thus, we build our own customized hardware for 3 different workloads.<br>
HDL file is in `final_project/rtl/user/design.v`, including 3 verilog modules.

```sh
Reading top.hex
top.hex loaded into memory
Memory 5 bytes = 0x6f 0x00 0x00 0x0b 0x13
VCD info: dumpfile top.vcd opened for output.
start time             1205513
LA qs 1 started
Received    40
Received   893
Received  2541
Received  2669
Received  3233
Received  4267
Received  4622
Received  5681
Received  6023
Received  9073
LA qs 2 passed
QS latency:       4218
start time             1396988
LA fir 1 started
Received:     0
Received:   -10
Received:   -29
Received:   -25
Received:    35
Received:   158
Received:   337
Received:   539
Received:   732
Received:   915
Received:  1098
LA fir 2 passed
fir latency:       3436
start time             1595938
LA mm 1 started
Received:    62
Received:    68
Received:    74
Received:    80
Received:    62
Received:    68
Received:    74
Received:    80
Received:    62
Received:    68
Received:    74
Received:    80
Received:    62
Received:    68
Received:    74
Received:    80
LA mm 2 passed
MM latency:       3837
Congrats
             1861813

```

### Last, we add instruction prefetch technique modifying `sdram_controller.v` to minimize instrucion read latency.<br>
```sh
Reading top.hex
top.hex loaded into memory
Memory 5 bytes = 0x6f 0x00 0x00 0x0b 0x13
VCD info: dumpfile top.vcd opened for output.
start time             1180513
LA qs 1 started
Received    40
Received   893
Received  2541
Received  2669
Received  3233
Received  4267
Received  4622
Received  5681
Received  6023
Received  9073
LA qs 2 passed
QS latency:       3730
start time             1359788
LA fir 1 started
Received:     0
Received:   -10
Received:   -29
Received:   -25
Received:    35
Received:   158
Received:   337
Received:   539
Received:   732
Received:   915
Received:  1098
LA fir 2 passed
fir latency:       2804
start time             1542938
LA mm 1 started
Received:    62
Received:    68
Received:    74
Received:    80
Received:    62
Received:    68
Received:    74
Received:    80
Received:    62
Received:    68
Received:    74
Received:    80
Received:    62
Received:    68
Received:    74
Received:    80
LA mm 2 passed
MM latency:       3000
Congrats
             1787888
```

### Conclusion: We can see that latency for each workload drops significantly.
Note: latency is calculated from checkbits 0XAB40 to checkbits to 0XAB51 for each workload.

|   Task   | Latency w/o Hardware | Latency w/ Hardware | Hardware + Prefetch | Hardware + Prefetch + Compiler -O1 |   Speed Up   |
|:--------:|:--------------------:|:-------------------:|:-------------------:|:----------------------------------:|:------------:|
|  qsort() |         29525        |         4218        |         3730        |                 2736               |  X **10.8**  |
|   fir()  |        162936        |         3436        |         2804        |                 1767               |  X **92.2**  |
| matmul() |         73729        |         3837        |         3000        |                 1957               |  X **37.7**  |
