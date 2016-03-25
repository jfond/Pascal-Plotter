clc
close all
clear all

BLOCK_WIDTH = 10;
NUMBER_OF_ROWS = 100;

PASCAL = pascal(NUMBER_OF_ROWS);

[X,Y] = meshgrid(1:BLOCK_WIDTH*NUMBER_OF_ROWS);
for n=1:NUMBER_OF_ROWS
   for m=1:n 
       height = PASCAL(n-m+1,m);
       x=BLOCK_WIDTH*NUMBER_OF_ROWS*(1/2)+1+(BLOCK_WIDTH*(-n/2 + m - 1):BLOCK_WIDTH*(-n/2 + m)-1);
       y=BLOCK_WIDTH*n-BLOCK_WIDTH+1:BLOCK_WIDTH*n;
       Z(y,x) = height;
   end
end


surf(X,Y,Z);
colormap hsv
colorbar
