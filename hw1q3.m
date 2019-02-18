%PN-Junction Bias Voltage, VPN (V)


VPN = -10:.01:10;
IS = 1E-15
q= 1.6022E-19
k = 1.38065E-23
ID = IS.* exp(q.*VPN/(k.*300))

figure(1);clf;
plot(VPN, ID);

%% Problem 2, plot load lines

%ID2 = IS2.* exp(q.*VPN/(k.*300))
Vsa= 10;
r1a = 5000;
IDa = Vsa/r1a - (1/r1a).*VPN;


figure(2); clf; 
plot (VPN, IDa)
xlabel ('PN-Junction Bias Voltage, VPN (V)');
ylabel ('Diode Current, ID (mA)')
title ('Load line: Vs= 10V, R1= 5k') 

%ID2 = IS2.* exp(q.*VPN/(k.*300))
Vsb = -10
r1b = 5000
IDb = Vsb/r1b - (1/r1b).*VPN;

figure(3); clf; 
plot (VPN, IDb)
xlabel ('PN-Junction Bias Voltage, VPN (V)');
ylabel ('Diode Current, ID (mA)')
title ('Load line: Vs= -10V, R1= 5k') 

Vsc = -2
r1c = 2000
IDc = Vsc/r1c - (1/r1c).*VPN;

figure(4); clf; 
plot (VPN, IDc)
xlabel ('PN-Junction Bias Voltage, VPN (V)');
ylabel ('Diode Current, ID (mA)')
title ('Load line: Vs= 2V, R1= 2k') 