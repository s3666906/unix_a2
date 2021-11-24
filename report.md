# RMIT CPT264 - UNIX Systems Administration and Programming Assignment 2 build_kernel
### Author : Miroslav Petkovic - s3666906

## Graphs

![cpu_temp](https://user-images.githubusercontent.com/31560703/143229443-5df4052f-d805-4291-95f6-dd29b7da2614.png)

![gpu_temp](https://user-images.githubusercontent.com/31560703/143229454-8e3e11e1-a11c-4760-b1d2-040cbf55c008.png)

![mem_usage](https://user-images.githubusercontent.com/31560703/143229467-05e6e737-8f35-4109-bba8-f1efb9723884.png)

## Report
The graphs above are showing the CPU, GPU temperature as well as Memory usage compared to CPU usage (purple line) of the Raspberry Pi while performing compiling. The average CPU temperature (green line) before compiling the kernel is 34°C. Graph 1 shows that during compiling, it reaches around 41°C at 111 seconds of compiling. The CPU began to be under load of 29% within 8 seconds of the building of the kernel and reached a maximum load of 100% in 130 second. The graph shows a correlation between CPU load and CPU temperature. Simply, the higher the CPU load is, the hotter the CPU got. The total time of completion of the kernel compilation was 482 seconds.

The GPU (green line) had an almost identical performance to the CPU, for the most part being within 1°C of the CPU. This shows that the GPU had sufficient cooling that kept the GPU performing at an optimal temperature without throttling. 

Lastly, Memory usage (green line) was monitored. During the compilation, the pi did not use more than 2GB of memory. The graph indicates that the test did not strain the memory of the Pi, even when the CPU (the purple line) was under full load. 

The case and fan I have used seems to provide good ventilation and reduce temperatures whilst underload. The graph show that the cooling helps the Pi from reaching throttle limits, which occurs when the Pi reaches around 85°C.
