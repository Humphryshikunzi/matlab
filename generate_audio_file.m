clear; close all; clc;

freq = 100; w = 2 * pi * freq;
Fs = 256e3;
t_end = 3;
t = linspace(0,t_end, t_end * Fs);
p = sin(w * t) .* exp(-3 * t);

freq1 = 120; wl = 2 * pi * freq;
p1 = sin(w * t).*exp(-6 * t);

p = p + p1;
p = p / max(p);

audiowrite('drum_audio.wav', [p' p'], Fs);
