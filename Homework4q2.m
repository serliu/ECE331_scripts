%% Homework 4 question 2

%Consider a common-source NMOSFET amplifier with an ac-bypassed source resistance. 
%Assume that KN = 500?A/V2, VT·N0 = 1.0V, VBS = 0, ?N = 0.0133V?1, VDD = 10V, 
%RSIG = 1k?, R1 = 430k?, R2 = 560k?, RD = 43k?, RS = 20k?, and RL = 100k?.

% Given Values
R1 = 430E3;
R2 = 560E3;
VDD = 10;
Kn = 500E-6;
VTn0 = 1;
VBS = 0;
RSIG = 1000;
RD = 43000;
RS = 20000;
RL = 100000;
lambda = .0133;

% Calculated
VGG = R1 * VDD/(R1+R2)
RG = R1*R2/(R1+R2)

% Solving systems of eqns
syms ID VGS VDS
eqn1 = RS*ID + VGS == VGG;
eqn2 = ID*(RD+RS) + VDS == VDD;
eqn3 = ID - (Kn/2 * (VGS-VTn0)^2) * (1 + lambda * (VDS - VGS + VTn0))== 0;

S = solve(eqn1, eqn2, eqn3)

ID = vpa(S.ID)
VGS = vpa(S.VGS)
VDS = vpa(S.VDS) 


%% 1c-1d BYPASSED 
rds = 2/ (lambda* Kn * (VGS(2) - VTn0)^2)
Rin = RG
Rout = RD*rds/(RD+rds) % RD//rds, rds = inf 

 % Gains
RP = 1/(1/RD + 1/RL + 1/rds)%rds//RL//RD
gm = sqrt (2* Kn * ID(2)*(1+lambda*(VDS(2) - VGS(2)-VTn0)))
Avt = -gm * RP

Av = -gm * RP * RG/ (RSIG+RG)

Ai = -gm * RP * RG/RL










