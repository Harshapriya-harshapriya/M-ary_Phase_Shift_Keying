clc;
close all;
EbNodB=-4:1:24;
EbNolin=10.^(EbNodB/10);
colors={'k-*','g-o','r-h','c-s','m-s','y-*','k-p','b:s','m:d','g:p'};
index=1;
%BPSK
BPSK = 0.5*erfc(sqrt(EbN0lin));
plotHandle=plot(EbNodB,log10(BPSK),char(colors(index)));
set(plotHandle,'LineWidth',1.5);
hold on;
index=index+1;
%M-PSK
m=2:1:5;
M=2.^m;
for i=M,
k=log2(i);
berErr = 1/k*erfc(sqrt(EbNolin*k)*sin(pi/i));
plotHandle=plot(EbNodB,log10(berErr),char(colors(index)));
set(plotHandle,'LineWidth',1.5);
index=index+1;
end
legend('BPSK','QPSK','8-PSK','16-PSK','32-PSK');
axis([-4 24 -8 0]);
set(gca,'XTick',-4:1:24);
ylabel('Probability of BER Error - log10(Pb)');
xlabel('Eb/No (dB)');
title('Probability of BER Error log10(Pb) Vs Eb/No');
grid on;
