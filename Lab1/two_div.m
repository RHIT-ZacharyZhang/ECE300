%MATLAB Review
%YANG ZHANG
%Sunday, September 04, 2016
%%
%Assignment 5
function [two_fac,remainder] = two_div(input)
%find the nearest integer for the input that divided by 2
two_fac = floor(input / 2);
%find the remainder
remainder = input - (two_fac .* 2);