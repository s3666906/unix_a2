#!/usr/bin/gnuplot
# RMIT USAP Assignment 2 build_kernel
# Author : Miroslav Petkovic
# Email : s3666906@student.rmit.edu.au
# Pi Version : 4

# Plots data from kernel_data.dat on to graph


# Graph resolution set
set terminal png size 700,700

set term png
set output "report.png"
set title "Cpu Temperature Over Time While Compiling the Kernel"
set xlabel "t/s"
set ylabel "temp(degC)/ % load"
set yrange [0:110]

plot "kernel_data.dat" using 1:4 w lp title "CPU Usage", "kernel_data.dat" using 1:2
plot "kernel_data.dat" using 1:4 w lp title "GPU Usage", "kernel_data.dat" using 1:4
plot "kernel_data.dat" using 1:4 w lp title "Mem Usage", "kernel_data.dat" using 1:5

