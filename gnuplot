#!/usr/bin/bash
# RMIT USAP Assignment 2 build_kernel
# Author : Miroslav Petkovic
# Email : s3666906@student.rmit.edu.au
# Pi Version : 4

# Plots cpu data from kernel_data.dat on to graph

gnuplot -persist <<-EOFMARKER
# Graph resolution set
	set terminal png size 700,700

	set term png
	set output "cpu_temp.png"
	set title "Cpu Temperature While Compiling the Kernel"
	set xlabel "t/s"
	set ylabel "temp(degC)/ % load"
	set yrange [0:110]

	plot "kernel_data.dat" using 1:4 w lp title "CPU Usage", "kernel_data.dat" using 1:2 title "CPU Temp"
EOFMARKER

# Plots gpu data from kernel_data.dat on to graph
gnuplot -persist <<-EOFMARKER
# Graph resolution set
	set terminal png size 700,700

	set term png
	set output "gpu_temp.png"
	set title "Gpu Temperature While Compiling the Kernel"
	set xlabel "t/s"
	set ylabel "temp(degC)/ % load"
	set yrange [0:110]

	plot "kernel_data.dat" using 1:4 w lp title "CPU Usage", "kernel_data.dat" using 1:3 title  "GPU Temp"
EOFMARKER

# Plots memory data from kernel_data.dat on to graph
gnuplot -persist <<-EOFMARKER
# Graph resolution set
	set terminal png size 700,700

	set term png
	set output "mem_usage.png"
	set title "Memory Usage While Compiling the Kernel"
	set xlabel "t/s"
	set ylabel "temp(degC)/ % load"
	set yrange [0:110]

	plot "kernel_data.dat" using 1:4 w lp title "CPU Usage", "kernel_data.dat" using 1:5 title "Mem Usage"
EOFMARKER

# Reference
# Stack Exchange Inc (User "waltinator"). 2015 ."How to execute commands in gnuplot using shell script?". <https://askubuntu.com/questions/701986/how-to-execute-commands-in-gnuplot-using-shell-script>. [Accessed 23 November 2021].

