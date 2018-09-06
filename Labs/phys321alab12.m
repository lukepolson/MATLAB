%phys 321a Lab 12 Plotting

drivefreqnowater=[0.30 0.50 0.70 0.90 1.10 1.30 1.50 1.60 1.90 2.00 2.20 2.40 2.60 2.80 3.00]
drivefreqnowater1= [0.30 0.50 0.70 0.90 1.10 1.30 1.50 1.60]
drivefreqnowater2= [1.90 2.00 2.20 2.40 2.60 2.80 3.00]
amplitudenowater1=[11 12 14 16 19 25 42 63]
amplitudenowater2= [74 41 21 13 9 7 5]
phaseanglenowater=[2 1 3 5 3 4 5 6 174 177 177 178 179 180 180]



drivefreqwater=[0.30 0.50 0.70 0.90 1.10 1.30 1.50 1.70 1.90 2.10 2.30 2.50 2.70]
drivefreqwater1=[0.30 0.50 0.70 0.90 1.10 1.30 1.50 1.70]
drivefreqwater2= [1.90 2.10 2.30 2.50 2.70]
amplitudewater1=[11 12 14 16 18 27 44 77]
amplitudewater2=[48 23 14 9 8]
phaseanglewater=[0 1 4 5 6 11 20 70 150 168 173 174 175]


%Plot 1
figure('name','Amplitude as a Function of Driving Frequency','NumberTitle','off');
hold on;
title('Amplitude as a Function of Driving Frequency')
ylabel('Amplitude (mm)')
xlabel('Frequency (Hz))')
h1=plot(drivefreqnowater1,amplitudenowater1, '--ro')
plot(drivefreqnowater2,amplitudenowater2, '--ro')
h2=plot(drivefreqwater1,amplitudewater1, '--bo')
plot(drivefreqwater2,amplitudewater2, '--bo')
legend([h1,h2],{'Without Water','With Water'})
grid on;
hold off;

%Plot 2
figure('name','Phase Angle as a Function of Driving Frequency','NumberTitle','off');
hold on;
title('Phase Angle as a Function of Driving Frequency')
ylabel('Amplitude (mm)')
xlabel('Frequency (Hz))')
plot(drivefreqnowater,phaseanglenowater, '--rs')
plot(drivefreqwater,phaseanglewater, '--bs')
legend('Without Water','With Water', 'Location','northwest')
grid on;
hold off;
