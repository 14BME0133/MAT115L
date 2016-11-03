clear all
clc
syms t
n = input('Enter number of data points n : ');
x_0 = input('Enter the starting value of x : ');
s = input('Enter spacing of x :');
y = input('Enter the y values (as a row vector): ');
n1 = input('Enter number of harmonics required : ');
x = x_0 + (0:n-1)*s;
l=0.5*(x(n)+s-x(1)); 
a_0 = (2/n)*sum(y);
for i=1:n1
yc=y.*cos(i*pi*x/l);
ys=y.*sin(i*pi*x/l);
a(i)=(2/n)*sum(yc);
b(i)=(2/n)*sum(ys);
end
F_s=a_0/2;
figure('Position',[1 1 1024 768])
 for i=1:n1
subplot(n1,1,i)
plot(x,y,'r*');
hold on
F_s = F_s+a(i).*cos(i*pi*t/l)+b(i).*sin(i*pi*t/l);
ezplot( F_s, [x(1) x(n)] );
title( ['Harmonics up to: ', num2str(i)] );
 end
disp('Fourier series : ')
vpa(F_s,4)