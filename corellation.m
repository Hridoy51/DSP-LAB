clc
clear all
close all
x=[1 2 3 4];
temp = [1 2 3 4];
h=[];
for i=length(temp):-1:1
  h=[h temp(i)];
 endfor
 disp(h);
z = [];
for i = 1:length(x)
  t= h.*x(i);
  z=[z;t];
endfor
[r c]=size(z);
s=2;
e = r+c;
ans=[];
sum=0;
while(s<=e)
  for i=1:r
    for j =1:c
      if(s==j+i)
        sum+=z(i,j);
       endif
    endfor
  endfor
 ans=[ans sum];
 sum=0;
s = s+1;
end
disp(ans);
stem(ans)

