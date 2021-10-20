%Use the Simulink to model FM modulator and demodulator. The parameters of
%simulation including carrier and message signal frequencies, FM modulator
%sensitivity,and Low Pass filter are setup by a companion MATLAB m-file.
%The carrier frequency is 25Hz and the message signal is 1HZ sine wave. The
%FM modulator sensitivity kf is set at 10 Hz/V. Use the Simulink model for
%the FM modulator

fm=input('Enter friquency of message signal ');
fc=input('Enter friquency of carrier signal ');
Am=input('Enter Amplitude of message signal ');
Ac=input('Enter Amplitude of carrier signal ');
Kf=input('Enter FM modulator sensitivity ');
fs=input('Enter Sammpling period ');
t=0:1/fs:1;         % Time Period
                           
% MESSAGE SIGNAL
Em=Am.*sin(2.*pi.*fm.*t);   % MESSAGE SIGNAL
subplot(311);
plot(t,Em)
xlabel('Time');  
ylabel('Amplitude');
title('Message Signal');
grid on

% CARRIER SIGNAL
Ec=Ac.*sin(2.*pi.*fc.*t);    % CARRIER SIGNAL  
subplot(312);
plot(t,Ec)
xlabel('Time');  
ylabel('Amplitude');
title('Carrier Signal');
grid on

% FM MODULATION
f=Kf.*Am;       %FRIQUENCY DEVIATION
s=Ac.*(cos((2.*pi.*fc.*t)+((f/fm).*sin(2.*pi.*fm.*t))));    % FM MODULATED SIGNAL
subplot(313);
plot(t,s)
xlabel('Time');  
ylabel('Amplitude');
title('FM Modulation');
grid on