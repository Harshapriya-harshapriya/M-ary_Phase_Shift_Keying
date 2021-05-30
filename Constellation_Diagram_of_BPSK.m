clc
clear all
close all
n=10000;
int=randi([0,1],1,n);
bpsk=zeros(size(int));
bpsk(int==1)=1
bpsk(int==0)=-1
plot(real(bpsk),imag(bpsk),'ored','linewidth',3);
xlim([-2 2]);
ylim([-2 2]);
title('BPSK Constellation');
xlabel('real part');
ylabel('imaginary part');
line(xlim,[0 0],'color','k','linewidth',1);
line([0 0],ylim,'color','k','linewidth',1);
grid on;
