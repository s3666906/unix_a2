# RMIT CPT264 - UNIX Systems Administration and Programming Assignment 2 build_kernel
### Author : Miroslav Petkovic - s3666906

## Graphs

![cpu_temp](https://user-images.githubusercontent.com/31560703/143127531-0daf7081-8af3-48ea-9b07-6d8e8ace750b.png)

![gpu_temp](https://user-images.githubusercontent.com/31560703/143127664-fdbe99ee-4f27-4bd7-a757-29fb35b6f27c.png)

![mem_use](https://user-images.githubusercontent.com/31560703/143127719-9337b67d-717d-47f4-befa-fa03fe2df9df.png)

## Report
The graphs above are showing the CPU, GPU temperature as well as Memory usage compared to CPU usage (purple line) of the Raspberry Pi while performing compiling. The average CPU temperature (green line) before compiling the kernel is 36°C. Graph 1 shows that during compiling, it reaches around 55-60°C. The CPU was under full load withing 16 seconds of the test beginning.

The GPU (green line) had an almost identical performance to the CPU, for the most part being within 1°C of the CPU. This shows that the GPU had sufficient cooling that kept the GPU performing at an optimal temperature without throttling.

Lastly, Memory usage (green line) was monitored. During the compilation, the pi did not use more than 2GB of memory. The graph indicates that the test did not strain the memory of the Pi, even when the CPU (the purple line) was under full load. 

The case and fan I have used seems to provide good ventilation and reduce temperatures whilst underload. The graph show that the cooling helps the Pi from reaching throttle limits, which occurs when the Pi reaches around 85°C.


## Comands Used For GNUPLOT
- set terminal png size 700,700

- set term png
- set output "report.png"
- set title "Cpu Temperature Over Time While Compiling the Kernel"
- set xlabel "t/s"
- set ylabel "temp(degC)/ % load"
- set yrange [0:110]

- plot "kernel_data.dat" using 1:4 w lp title "CPU Usage", "kernel_data.dat" using 1:2
- plot "kernel_data.dat" using 1:4 w lp title "GPU Usage", "kernel_data.dat" using 1:4
- plot "kernel_data.dat" using 1:4 w lp title "Mem Usage", "kernel_data.dat" using 1:5
