clc
clear
close all
fun = @(x) 2*x + 2;
bisection(fun, -10, 10, 0.01)
