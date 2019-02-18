%% ECE 331 Homework 4 

% Question 1 pt A: Q point

% Given Values
R1 = 1E6;
R2 = 2.7E6;
VDD = 16;
Kn = 250E-6;
VTn0 = 1;
VBS = 0;
RSIG = 1000;
RD = 82000;
RS = 27000;
RL = 470000;

% Calculated
VGG = R1* VDD/(R1+R2)
RG = R1*R2/(R1+R2)

% Solving systems of eqns
syms ID VGS VDS
eqn1 = RS*ID + VGS == VGG;
eqn2 = ID*(RD+RS) + VDS == VDD;
eqn3 = ID - (Kn/2 * (VGS-VTn0)^2)== 0;

%%Equating the two ID equations, eqn1 and eqn3
p = [Kn/2, (-Kn*VTn0 +1/RS), ((Kn/2)* VTn0^2 -(VGG/RS))]
VGS2 = roots(p)
VGS2(1)
ID = (VGG - VGS2(1))/RS
VDS = -ID*(RD+RS) + VDD 

%% 1c-1d BYPASSED 
% rds = 2/ (lambda* Kn* (VGS - VTn0)^2)
Rin = RG
Rout = RD % RD//rds, rds = inf 

 % Gains
RP = RD * RL / (RD + RL)%rds//RL//RD
gm = sqrt (2* Kn * ID)
Avt = -gm * RP
Av = -gm * RP * RG/ (RSIG+RG)
Ai = -gm * RP * RG/RL

%% 1f, unbypassed Rout
Rout_unbyp = RD * (RS + gm)/ (RD +RS + gm)
