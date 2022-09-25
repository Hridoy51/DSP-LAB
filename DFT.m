clc;
clear all;

input = ones(1,7);
d = 0:6;
subplot(4,1,1);
plot(d,input);
inputLen = length(input);
npoint = 160;
input = [input zeros(1,npoint-inputLen)];
ans=zeros(1,npoint);
for k=0:npoint-1

  for n=0:npoint-1
    ans(k+1)=ans(k+1)+(input(n+1)*exp(-i*2*pi*n*k/npoint));
  endfor
endfor
p=0:npoint-1;
subplot(4,1,2);
plot(p,abs(ans));
axis tight;
title('Magnitude');

subplot(4,1,3);
plot(p,angle(ans));
axis tight;
title('Phase');


####inverse dft
ans1 = zeros(1,npoint);
for n=0:npoint-1

  for k=0:npoint-1
    ans1(n+1) = ans1(n+1)+(ans(k+1)*exp(i*2*pi*k*n/npoint));
  endfor
  ans1(n+1)=ans1(n+1)*(1/npoint);
endfor

subplot(4,1,4);
plot(p,ans1);
axis tight;
title('INVERSE DFT');


