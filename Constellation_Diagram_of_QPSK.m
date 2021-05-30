clc
clear all
close all
n=10000;
int=randi([1,4],1,n);
A=1/sqrt(2);
qpsk=zeros(size(int));
qpsk(int==1)=A+i*A;
qpsk(int==2)=A-i*A;
qpsk(int==3)=-A+i*A;
qpsk(int==4)=-A-i*A;
plot(real(qpsk),imag(qpsk),'ored','linewidth',3);
xlim([-2 2]);
ylim([-2 2]);
line(xlim,[0 0],'color','k','linewidth',1);
line([0 0],ylim,'color','k','linewidth',1);
hold on
ezplot('x^2+y^2=1');
grid on
title('QPSK Constellation');
xlabel('real part');
ylabel('imaginary part');
