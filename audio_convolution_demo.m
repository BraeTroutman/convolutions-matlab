[y, FS] = audioread("3012910.mp3");
sealegs = audioplayer(y, FS);

filter = zeros(1, length(y));
filter(10) = 0.6;
filter(0.5*FS) = 0.6;

z = conv(y(:,1), filter);

with_echo = audioplayer(z, FS);

figure(1);
subplot(2,1,1);
plot(y(:,1));
title("Sealegs Audio Waveform");
xlim([0 length(y)/20]);
ylim([-1 1]);

subplot(2,1,2);
plot(z);
xlim([0 length(y)/20]);
ylim([-1 1]);
title("Sealegs w/ Echo Waveform");