%MATLAB Review
%YANG ZHANG
%Sunday, September 04, 2016
%%
%Assignment 4
function test(input)
% Insert comments here describing how function is to be used
if isnumeric(input) == 1
    disp('The input is a number')
elseif ischar(input) == 1
    disp('The input is a character')
end