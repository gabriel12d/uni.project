function E5()

F=50; %Hz
t=0:0.001:0.2; %durata semnalului este de 0.2 s,iar pasul este de 0.001s
s=2*sin(2*pi*F*t);
plot(t,s,'.-'),xlabel('Timp[s]'),grid

figure
t=0:0.01:0.2; 
s2=2*sin(2*pi*F*t);
plot(t,s2,'.-'),xlabel('Timp[s2]'),grid

figure
t=0:0.0002:0.2; 
s3=2*sin(2*pi*F*t);
plot(t,s3,'.-'),xlabel('Timp[s3]'),grid
% -> la un pas de variatie mai mare, semnalul nu mai este simetric
figure

%pct c)
F=20; %Hz
c=2*cos(pi/2-(2*pi*F*t));
plot(t,c,'.-r'),xlabel('Timp[c]'),grid
hold on
F=50; %Hz
t=0:0.001:0.2; %durata semnalului este de 0.2 s,iar pasul este de 0.001s
s=2*sin(2*pi*F*t);
plot(t,s,'.-'),xlabel('Timp[s]'),grid