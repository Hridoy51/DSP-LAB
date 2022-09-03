clc
clear all
close all
x=input("enter x values");
h = input("enter h values");
mat = [];
for i = 1:length(x)
  temp = h.*x(i);
  mat=[mat;temp];
endfor
[row col]=size(mat);
s=2;
e = row+col;
ans=[];
sum=0;
while(s<=e)
  for i=1:row
    for j =1:col
      if(s==j+i)
        sum+=mat(i,j);
       endif
    endfor
  endfor
 ans=[ans sum];
 sum=0;
s = s+1;
end



subplot(3,1,1);


stem(x);
xlabel('a');
ylabel('1 3 4 7');



subplot(3,1,2);

stem(h);
xlabel('b');
ylabel('1 2 3');



subplot(3,1,3);
stem(ans);
xlabel('c');
disp(ans);
