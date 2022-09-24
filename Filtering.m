clc;
clear all;
close all;
#pkg install -forge signal
#pkg load signal
# take a random signal

f = 10;
fs = 500;
ts = 0:1/fs:1;
y = sin(2*pi*f*ts);
subplot(4,1,1);
plot(ts,y);
title('Random signal');

#adding noise

y =y+rand(1,length(y));
subplot(4,1,2);
plot(ts,y);
title('Random signal with NOISE');

#FFT

npoint = 2^nextpow2(length(y));
fout = abs(fft(y,npoint));
subplot(4,1,3);
d = 0:npoint-1;
plot(d,fout);
axis tight;
title('FFT signal');

#use FILTER

order = 5;
wn = [ 8 15]*2/fs;
[b a] = butter(order,wn,"bandpass");
ans  = filter(b,a,y);
subplot(4,1,4);

plot(ts,ans);
axis tight;
title('After cancel noise');



