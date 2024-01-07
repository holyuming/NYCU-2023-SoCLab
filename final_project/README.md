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
start time             2851738
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
QS latency:       41737
start time             3895438
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
fir latency:       174090
start time             8274788
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
MM latency:       90444
Congrats
             10535888
```
<br>

### Thus, we build our own customized hardware for 3 different workloads.<br>
HDL file is in `final_project/rtl/user/design.v`, including 3 verilog modules.

```sh
Reading top.hex
top.hex loaded into memory
Memory 5 bytes = 0x6f 0x00 0x00 0x0b 0x13
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
QS latency:       7148
start time             1359488
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
fir latency:       7303
start time             1542338
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
MM latency:       9744
Congrats
             1785938
```

### Conclusion: We can see that latency for each workload drops significantly.

| Task | Latency w/o Hardware | Latency w/ Hardware |
|:----:|:---------------------:|:-------------------:|
|  qs  |        41,737         |        7,148        |
|  fir |       174,090         |        7,303        |
|  mm  |        90,444         |        9,744        |

